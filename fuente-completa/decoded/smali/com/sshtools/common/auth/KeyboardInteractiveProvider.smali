.class public interface abstract Lcom/sshtools/common/auth/KeyboardInteractiveProvider;
.super Ljava/lang/Object;
.source "KeyboardInteractiveProvider.java"


# virtual methods
.method public abstract getInstruction()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract hasAuthenticated()Z
.end method

.method public abstract init(Lcom/sshtools/common/ssh/SshConnection;)[Lcom/sshtools/common/ssh2/KBIPrompt;
.end method

.method public abstract setResponse([Ljava/lang/String;Ljava/util/Collection;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/sshtools/common/ssh2/KBIPrompt;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
