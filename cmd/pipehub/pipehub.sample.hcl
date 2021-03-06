server {
  graceful-shutdown = "10s"

  action {
    not-found = "base.NotFound"
    panic     = "base.Panic"
  }

  http {
    port = 80
  }
}

host {
  endpoint = "google"
  handler  = "base.Default"
}

pipe "github.com/pipehub/sample" {
  version = "v0.7.0"
  alias   = "base"
}
