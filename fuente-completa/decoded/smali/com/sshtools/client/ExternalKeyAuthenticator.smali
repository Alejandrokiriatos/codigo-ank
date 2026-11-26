.class public Lcom/sshtools/client/ExternalKeyAuthenticator;
.super Lcom/sshtools/client/PublicKeyAuthenticator;
.source "ExternalKeyAuthenticator.java"


# instance fields
.field authenticatingKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field publickeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sshtools/common/ssh/components/SshPublicKey;",
            ">;"
        }
    .end annotation
.end field

.field signatureGenerator:Lcom/sshtools/common/publickey/SignatureGenerator;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/publickey/SignatureGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->authenticatingKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 46
    iput-object p1, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->signatureGenerator:Lcom/sshtools/common/publickey/SignatureGenerator;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Lcom/sshtools/common/publickey/SignatureGenerator;->getPublicKeys()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->publickeys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getAuthenticatingKey()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->authenticatingKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    return-object v0
.end method

.method protected getSignatureGenerator()Lcom/sshtools/common/publickey/SignatureGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->signatureGenerator:Lcom/sshtools/common/publickey/SignatureGenerator;

    return-object v0
.end method

.method protected hasCredentialsRemaining()Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->publickeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->publickeys:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/SshPublicKey;

    iput-object v0, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->authenticatingKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 69
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    const-string v0, "Using key {}"

    iget-object v1, p0, Lcom/sshtools/client/ExternalKeyAuthenticator;->authenticatingKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-static {v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method
