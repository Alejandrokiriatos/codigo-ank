.class public abstract Lcom/sshtools/common/auth/AbstractPublicKeyAuthenticationProvider;
.super Ljava/lang/Object;
.source "AbstractPublicKeyAuthenticationProvider.java"

# interfaces
.implements Lcom/sshtools/common/auth/PublicKeyAuthenticationProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 64
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public checkKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/sshtools/common/auth/AbstractPublicKeyAuthenticationProvider;->isAuthorizedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)Z

    move-result p1

    return p1
.end method

.method public getKeys(Lcom/sshtools/common/ssh/SshConnection;)Ljava/util/Iterator;
    .locals 0
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

    .line 52
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "publickey"

    return-object v0
.end method

.method public remove(Lcom/sshtools/common/ssh/components/SshPublicKey;Lcom/sshtools/common/ssh/SshConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/permissions/PermissionDeniedException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 58
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
