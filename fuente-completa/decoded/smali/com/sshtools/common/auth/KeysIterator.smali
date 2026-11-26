.class public Lcom/sshtools/common/auth/KeysIterator;
.super Ljava/lang/Object;
.source "KeysIterator.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sshtools/common/publickey/SshPublicKeyFile;",
        ">;"
    }
.end annotation


# instance fields
.field entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sshtools/common/auth/KeysIterator;->entries:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/sshtools/common/auth/KeysIterator;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Lcom/sshtools/common/publickey/SshPublicKeyFile;
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/sshtools/common/auth/KeysIterator;->entries:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;

    .line 49
    :try_start_0
    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-virtual {v0}, Lcom/sshtools/common/publickey/authorized/PublicKeyEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Lcom/sshtools/common/publickey/SshPublicKeyFileFactory;->create(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;I)Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/sshtools/common/auth/KeysIterator;->next()Lcom/sshtools/common/publickey/SshPublicKeyFile;

    move-result-object v0

    return-object v0
.end method
