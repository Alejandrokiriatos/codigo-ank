.class public Lcom/sshtools/client/PrivateKeyFileAuthenticator;
.super Lcom/sshtools/client/PublicKeyAuthenticator;
.source "PrivateKeyFileAuthenticator.java"


# instance fields
.field private keyfile:Lcom/sshtools/common/publickey/SshPrivateKeyFile;

.field private pair:Lcom/sshtools/common/ssh/components/SshKeyPair;

.field private passphrase:Lcom/sshtools/client/PassphrasePrompt;

.field private path:Ljava/nio/file/Path;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/sshtools/client/PassphrasePrompt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;Lcom/sshtools/client/PassphrasePrompt;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;-><init>()V

    .line 68
    invoke-static {p1}, Lcom/sshtools/common/publickey/SshPrivateKeyFileFactory;->parse(Ljava/nio/file/Path;)Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->keyfile:Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    .line 69
    iput-object p1, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->path:Ljava/nio/file/Path;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lcom/sshtools/client/PassphrasePrompt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;)V

    .line 60
    iput-object p2, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;-><init>(Ljava/nio/file/Path;)V

    .line 55
    new-instance p1, Lcom/sshtools/client/PrivateKeyFileAuthenticator$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/sshtools/client/PrivateKeyFileAuthenticator$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
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

    .line 92
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->pair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    return-object v0
.end method

.method protected getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->keyfile:Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    invoke-interface {v0}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->isPassphraseProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->keyfile:Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    invoke-virtual {p0}, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->getPassphrase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->pair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->keyfile:Lcom/sshtools/common/publickey/SshPrivateKeyFile;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sshtools/common/publickey/SshPrivateKeyFile;->toKeyPair(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->pair:Lcom/sshtools/common/ssh/components/SshKeyPair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->pair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/SshKeyPair;->getPublicKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 85
    :goto_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->passphrase:Lcom/sshtools/client/PassphrasePrompt;

    iget-object v1, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->path:Ljava/nio/file/Path;

    invoke-interface {v1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Passphrase for %s: "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sshtools/client/PassphrasePrompt;->getPasshrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected hasCredentialsRemaining()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sshtools/client/PrivateKeyFileAuthenticator;->pair:Lcom/sshtools/common/ssh/components/SshKeyPair;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
