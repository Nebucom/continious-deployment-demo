# Class: jenkins::plugins
#
class jenkins::plugins {

  if $caller_module_name != $module_name {
    fail("Use of private class ${name} by ${caller_module_name}")
  }

  jenkins::plugin { "promoted-builds" : }
  jenkins::plugin { "ssh-credentials" : }
  jenkins::plugin { "credentials" : }
  jenkins::plugin { "git-client" : }
  jenkins::plugin { "multiple-scms" : }
  jenkins::plugin { "scm-api" : }
  jenkins::plugin { "token-macro" : }
  jenkins::plugin { "parameterized-trigger" : }
  jenkins::plugin { "ssh-agent" : }
  jenkins::plugin { "github-api" : }
  jenkins::plugin { "github" : }
  jenkins::plugin { "git" : }

  jenkins::plugin { "ssh-slaves" : }
  jenkins::plugin { "docker-plugin" : }

  jenkins::plugin { "nodejs" : }

  create_resources('jenkins::plugin',$jenkins::plugin_hash)

}
