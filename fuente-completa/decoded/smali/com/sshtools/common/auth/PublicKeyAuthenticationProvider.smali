.class public interface abstract Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;
.super Ljava/lang/Object;
.source "PublicKeyAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/Authenticator;


# virtual methods
.method public abstract add(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method

.method public abstract checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getKeys(Lcom/sshtools/common/ssh/SshConnection;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/common/ssh/SshConnection;",
            ")",
            "Ljava/util/Iterator<",
            "Lcom/sshtools/common/publickey/SshPublicKeyFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract remove(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation
.end method
