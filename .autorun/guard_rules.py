"""Repo-specific guard rules, loaded by the autorun plugin's guard_bash.py.

Self-test (framework + CASES):

    python3 <plugin>/hooks/guard_bash.py --self-test
"""
from guard_bash import segments, _is_cmd, _git_subcommand, effective_cwd  # noqa: F401 — for EXTRA_RULES

# {repo-relative path: reason} — never staged by name, never swept in while dirty.
PROTECTED_FROM_STAGING = {
}

# Recursive deletes must resolve inside one of these (relative = repo-relative).
DELETE_OK_ROOTS = [".", "/tmp", "/var/tmp"]

# {path: reason} — a recursive delete that reaches one of these is denied.
PINNED_PATHS = {
    "data": "the founder's form exports and contact data (hard rule 2) — never the loop's",
    "docs/planning": "pre-registrations and the decision log",
    "site": "the published fake-door page — changed by edits, never wiped",
}

# {"command": ("subdir", "why")} — inside the repo, `command` must run from subdir.
REQUIRED_CWD = {
}


def rule_no_remote_git(command, _cwd):
    """Approval boundary: the loop never pushes or merges (POLICY 'Remote git')."""
    if "push" not in command and "merge" not in command:
        return None
    for argv in segments(command):
        sub = _git_subcommand(argv) if _is_cmd(argv, "git") else None
        if sub in ("push", "merge"):
            return (f"⛔ `git {sub}` is an approval boundary in this repo — the loop "
                    "commits on the checked-out branch only; the supervisor pushes.")
        if _is_cmd(argv, "gh") and "pr" in argv and "merge" in argv:
            return "⛔ `gh pr merge` is an approval boundary in this repo. PAUSE for the founder."
    return None


def rule_no_outbound_messages(command, _cwd):
    """Hard rule 6: the loop never contacts anyone — no mail or chat clients, no webhooks."""
    senders = ("sendmail", "mail", "mailx", "mutt", "msmtp", "swaks")
    for argv in segments(command):
        if any(_is_cmd(argv, s) for s in senders):
            return "⛔ The loop never sends messages (CLAUDE.md hard rule 6). Draft it; the founder sends."
        if _is_cmd(argv, "curl") and any(h in a for a in argv
                                         for h in ("hooks.slack.com", "api.sendgrid", "smtp")):
            return "⛔ The loop never sends messages (CLAUDE.md hard rule 6)."
    return None


EXTRA_RULES = [rule_no_remote_git, rule_no_outbound_messages]

# (command, cwd relative to the repo root, should_block)
CASES = [
    # pinned paths
    ("rm -rf data", ".", True),
    ("rm -rf data/form-export", ".", True),
    ("rm -rf docs/planning", ".", True),
    ("rm -rf site", ".", True),
    ("rm -rf .pytest_cache build", ".", False),
    ("rm -rf /tmp/pp-scratch", ".", False),
    ("rm -rf /home/igor/elsewhere", ".", True),
    # remote git
    ("git push origin autorun/loop", ".", True),
    ("git merge main", ".", True),
    ("gh pr merge 3 --squash", ".", True),
    ("git commit -m 'docs: R1 push factors and merger news'", ".", False),
    ("git log --oneline main..HEAD", ".", False),
    # outbound messages
    ("sendmail seller@example.com < docs/outreach/wechat-post.md", ".", True),
    ("mail -s hello someone@example.com", ".", True),
    ("curl -X POST https://hooks.slack.com/services/x -d @msg.json", ".", True),
    ("curl -sSI https://pypi.org/simple/", ".", False),
    ("grep -rn 'mail' docs/outreach/", ".", False),
]
