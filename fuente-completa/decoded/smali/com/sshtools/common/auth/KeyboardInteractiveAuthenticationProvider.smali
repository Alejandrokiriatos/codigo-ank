.class public interface abstract Lcom/sshtools/common/auth/KeyboardInteractiveAuthenticationProvider;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/Authenticator;


# virtual methods
.method public abstract createInstance(Lcom/sshtools/common/ssh/SshConnection;)Lcom/sshtools/common/auth/KeyboardInteractiveProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
