//
//  TestDecode.swift
//  GitHub-OpenAPI
//
//  Created by Milo Hehmsoth on 8/27/25.
//

import Foundation
import Testing
import Push

@Suite struct DecodingTests {
    @Test("Push Event Decode - Happy") func testPushEventDecodeHappy() throws {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        
        let data = pushEventString.data(using: .utf8)!
        
        let decoded = try decoder.decode(Push.Components.Schemas.WebhookPush.self, from: data)
        print(decoded)
    }
}

fileprivate let pushEventString = """
{
  "ref": "refs/heads/dev",
  "before": "08aba85df74147ccddcf85aa4b5b10f3a3cce921",
  "after": "e144fa45d8f605d74496ddf45fd8b0d1b1e1e293",
  "repository": {
    "id": 614102781,
    "node_id": "R_kgDOJJp2_Q",
    "name": "SwiftGithubOpenAPI",
    "full_name": "mheh/SwiftGithubOpenAPI",
    "private": true,
    "owner": {
      "name": "Milo Hehmsoth",
      "email": "<redacted>",
      "login": "",
      "id": 1,
      "node_id": "O_kgDOB5-i9x",
      "avatar_url": "https://avatars.githubusercontent.com/u/123456789?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/mheh",
      "html_url": "https://github.com/mheh",
      "followers_url": "https://api.github.com/users/mheh/followers",
      "following_url": "https://api.github.com/users/mheh/following{/other_user}",
      "gists_url": "https://api.github.com/users/mheh/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/mheh/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/mheh/subscriptions",
      "organizations_url": "https://api.github.com/users/mheh/orgs",
      "repos_url": "https://api.github.com/users/mheh/repos",
      "events_url": "https://api.github.com/users/mheh/events{/privacy}",
      "received_events_url": "https://api.github.com/users/mheh/received_events",
      "type": "Organization",
      "user_view_type": "public",
      "site_admin": false
    },
    "html_url": "https://github.com/mheh/SwiftGithubOpenAPI",
    "description": "",
    "fork": false,
    "url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI",
    "forks_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/forks",
    "keys_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/teams",
    "hooks_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/hooks",
    "issue_events_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/issues/events{/number}",
    "events_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/events",
    "assignees_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/assignees{/user}",
    "branches_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/branches{/branch}",
    "tags_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/tags",
    "blobs_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/languages",
    "stargazers_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/stargazers",
    "contributors_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/contributors",
    "subscribers_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/subscribers",
    "subscription_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/subscription",
    "commits_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/contents/{+path}",
    "compare_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/merges",
    "archive_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/downloads",
    "issues_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/issues{/number}",
    "pulls_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/mhehm/SwiftGithubOpenAPI/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/labels{/name}",
    "releases_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/releases{/id}",
    "deployments_url": "https://api.github.com/repos/mheh/SwiftGithubOpenAPI/deployments",
    "created_at": 1678833302,
    "updated_at": "2025-08-13T22:17:03Z",
    "pushed_at": 1756344149,
    "git_url": "git://github.com/mheh/SwiftGithubOpenAPI.git",
    "ssh_url": "git@github.com:mheh/SwiftGithubOpenAPI.git",
    "clone_url": "https://github.com/mheh/SwiftGithubOpenAPI.git",
    "svn_url": "https://github.com/mheh/SwiftGithubOpenAPI",
    "homepage": null,
    "size": 38850,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": "Swift",
    "has_issues": true,
    "has_projects": true,
    "has_downloads": true,
    "has_wiki": false,
    "has_pages": false,
    "has_discussions": false,
    "forks_count": 0,
    "mirror_url": null,
    "archived": false,
    "disabled": false,
    "open_issues_count": 0,
    "license": {
      "key": "other",
      "name": "Other",
      "spdx_id": "NOASSERTION",
      "url": null,
      "node_id": "MDc6TGljZW5zZTA="
    },
    "allow_forking": false,
    "is_template": false,
    "web_commit_signoff_required": false,
    "topics": [],
    "visibility": "private",
    "forks": 0,
    "open_issues": 0,
    "watchers": 0,
    "default_branch": "main",
    "stargazers": 0,
    "master_branch": "main",
    "organization": "",
    "custom_properties": {}
  },
  "pusher": {
    "name": "mheh",
    "email": "30190522+mheh@users.noreply.github.com"
  },
  "organization": {
    "login": "mheh",
    "id": 127902454,
    "node_id": "O_kgDOB5-i9g",
    "url": "https://api.github.com/orgs/mheh",
    "repos_url": "https://api.github.com/orgs/mheh/repos",
    "events_url": "https://api.github.com/orgs/mheh/events",
    "hooks_url": "https://api.github.com/orgs/mheh/hooks",
    "issues_url": "https://api.github.com/orgs/mheh/issues",
    "members_url": "https://api.github.com/orgs/mheh/members{/member}",
    "public_members_url": "https://api.github.com/orgs/mheh/public_members{/member}",
    "avatar_url": "https://avatars.githubusercontent.com/u/127902454?v=4",
    "description": ""
  },
  "sender": {
    "login": "mheh",
    "id": 30190522,
    "node_id": "MDQ6VXNlcjMwMTkwNTIy",
    "avatar_url": "https://avatars.githubusercontent.com/u/30190522?v=4",
    "gravatar_id": "",
    "url": "https://api.github.com/users/mheh",
    "html_url": "https://github.com/mheh",
    "followers_url": "https://api.github.com/users/mheh/followers",
    "following_url": "https://api.github.com/users/mheh/following{/other_user}",
    "gists_url": "https://api.github.com/users/mheh/gists{/gist_id}",
    "starred_url": "https://api.github.com/users/mheh/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/mheh/subscriptions",
    "organizations_url": "https://api.github.com/users/mheh/orgs",
    "repos_url": "https://api.github.com/users/mheh/repos",
    "events_url": "https://api.github.com/users/mheh/events{/privacy}",
    "received_events_url": "https://api.github.com/users/mheh/received_events",
    "type": "User",
    "user_view_type": "public",
    "site_admin": false
  },
  "created": false,
  "deleted": false,
  "forced": false,
  "base_ref": null,
  "compare": "https://github.com/mheh/SwiftGithubOpenAPI/compare/08aba85df741...e144fa45d8f6",
  "commits": [
  ],
  "head_commit": {
    "id": "e144fa45d8f605d74496ddf45fd8b0d1b1e1e293",
    "tree_id": "c2b041f2419b684ea0f3dce6f318df047120e4b0",
    "distinct": true,
    "message": "",
    "timestamp": "2025-08-27T20:22:18-05:00",
    "url": "",
    "author": {
      "name": "Milo Hehmsoth",
      "email": "<redacted>",
      "username": "mheh"
    },
    "committer": {
      "name": "Milo Hehmsoth",
      "email": "<redacted>",
      "username": "mheh"
    },
    "added": [],
    "removed": [],
    "modified": []
  }
}
"""
