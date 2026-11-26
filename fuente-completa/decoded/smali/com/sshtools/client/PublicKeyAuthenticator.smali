.class public abstract Lcom/sshtools/client/PublicKeyAuthenticator;
.super Lcom/sshtools/client/SimpleClientAuthenticator;
.source "PublicKeyAuthenticator.java"

# interfaces
.implements Lcom/sshtools/client/ClientAuthenticator;


# static fields
.field public static final SSH_MSG_USERAUTH_PK_OK:I = 0x3c


# instance fields
.field currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field isAuthenticating:Z

.field signatureGenerator:Lcom/sshtools/common/publickey/SignatureGenerator;

.field signingAlgorithm:Ljava/lang/String;

.field transport:Lcom/sshtools/client/TransportProtocolClient;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/sshtools/client/SimpleClientAuthenticator;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    return-void
.end method

.method private setupNextKey()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 72
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v0}, Lcom/sshtools/client/TransportProtocolClient;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    const-class v1, Lcom/sshtools/common/policy/SignaturePolicy;

    invoke-virtual {v0, v1}, Lcom/sshtools/client/SshClientContext;->getPolicy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/policy/SignaturePolicy;

    .line 76
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 77
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    instance-of v2, v1, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaCertificate;

    const/16 v3, 0x400

    const-string v4, "Server does not support {} signature for key {}"

    const-string v5, "rsa-sha2-256"

    const-string v6, "rsa-sha2-512"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getBitLength()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 78
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    iput-object v6, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;-><init>()V

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha256Certificate;->init([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iput-object v5, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    .line 83
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha512Certificate;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha512Certificate;-><init>()V

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/jce/OpenSshRsaSha512Certificate;->init([B)Lcom/sshtools/common/ssh/components/SshPublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 90
    :goto_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Upgrading certificate {} to use {} signature"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 86
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 87
    invoke-static {v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 85
    invoke-static {v4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 93
    :cond_3
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    instance-of v2, v1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    if-eqz v2, :cond_6

    invoke-interface {v1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getBitLength()I

    move-result v1

    if-lt v1, v3, :cond_6

    .line 94
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iput-object v6, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA512;-><init>(Lcom/sshtools/common/ssh/components/SshRsaPublicKey;)V

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    goto :goto_1

    .line 97
    :cond_4
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    iput-object v5, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    .line 99
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    check-cast v1, Lcom/sshtools/common/ssh/components/SshRsaPublicKey;

    invoke-direct {v0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2RsaPublicKeySHA256;-><init>(Lcom/sshtools/common/ssh/components/SshRsaPublicKey;)V

    iput-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 106
    :goto_1
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Upgrading key {} to use {} signature"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 101
    :cond_5
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 102
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 103
    invoke-static {v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 101
    invoke-static {v4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->isStrictMode()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/sshtools/common/policy/SignaturePolicy;->getSupportedSignatures()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 110
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 111
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getSigningAlgorithm()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    .line 112
    invoke-static {v1}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 110
    invoke-static {v4, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :goto_2
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->hasCredentialsRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_7
    :goto_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 118
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getOpenSSHFormattedKey(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Authenticating with {}"

    invoke-static {v1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method private writePublicKey(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshPublicKey;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 209
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 210
    invoke-interface {p2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    return-void
.end method


# virtual methods
.method public authenticate(Lcom/sshtools/client/TransportProtocolClient;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 133
    invoke-virtual {p1}, Lcom/sshtools/client/TransportProtocolClient;->getConnection()Lcom/sshtools/synergy/ssh/Connection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/PublicKeyAuthenticator;->onStartAuthentication(Lcom/sshtools/synergy/ssh/Connection;)V

    .line 135
    iput-object p1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    .line 136
    iput-object p2, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->username:Ljava/lang/String;

    .line 138
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->hasCredentialsRemaining()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->setupNextKey()Z

    .line 140
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->doPublicKeyAuth()V

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "No more credentials"

    invoke-static {p2, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/sshtools/client/PublicKeyAuthenticator;->done(Z)V

    return-void
.end method

.method doPublicKeyAuth()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const-string v1, "Public key operation failed"

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->generateSignatureData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sshtools/client/PublicKeyAuthenticator;->generateAuthenticationRequest([B)[B

    move-result-object v8

    .line 161
    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    new-instance v3, Lcom/sshtools/client/PublicKeyAuthenticator$1;

    iget-object v5, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->username:Ljava/lang/String;

    const-string v6, "ssh-connection"

    const-string v7, "publickey"

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/sshtools/client/PublicKeyAuthenticator$1;-><init>(Lcom/sshtools/client/PublicKeyAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v0, v3}, Lcom/sshtools/client/TransportProtocolClient;->postMessage(Lcom/sshtools/common/sshd/SshMessage;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sshtools/common/publickey/InvalidPassphraseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 179
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->failure()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 176
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 177
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->failure()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 173
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->failure()V

    :goto_0
    return-void
.end method

.method generateAuthenticationRequest([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 217
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 220
    :try_start_0
    iget-boolean v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBoolean(Z)V

    .line 222
    iget-boolean v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    if-nez v1, :cond_0

    .line 223
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "Verifying key {}"

    iget-object v2, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v2}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    const-string v1, "Encoded key{}{}"

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {v3}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getEncoded()[B

    move-result-object v3

    const/16 v4, 0x20

    const/4 v5, 0x1

    invoke-static {v3, v4, v5, v5}, Lcom/sshtools/common/util/Utils;->bytesToHex([BIZZ)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    :cond_0
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/client/PublicKeyAuthenticator;->writePublicKey(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 231
    iget-boolean v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    if-eqz v1, :cond_2

    .line 233
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    const-string v1, "Signing authentication request with {}"

    iget-object v2, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_1
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->getSignatureGenerator()Lcom/sshtools/common/publickey/SignatureGenerator;

    move-result-object v1

    iget-object v2, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    iget-object v3, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->signingAlgorithm:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1}, Lcom/sshtools/common/publickey/SignatureGenerator;->sign(Lcom/sshtools/common/ssh/components/SshPublicKey;Ljava/lang/String;[B)[B

    move-result-object p1

    .line 240
    invoke-virtual {v0, p1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    .line 243
    :cond_2
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    .line 247
    throw p1
.end method

.method generateSignatureData()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/sshtools/common/util/ByteArrayWriter;

    invoke-direct {v0}, Lcom/sshtools/common/util/ByteArrayWriter;-><init>()V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->transport:Lcom/sshtools/client/TransportProtocolClient;

    invoke-virtual {v1}, Lcom/sshtools/client/TransportProtocolClient;->getSessionKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBinaryString([B)V

    const/16 v1, 0x32

    .line 189
    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->write(I)V

    .line 190
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 191
    const-string v1, "ssh-connection"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 192
    const-string v1, "publickey"

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeString(Ljava/lang/String;)V

    .line 193
    iget-boolean v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    invoke-virtual {v0, v1}, Lcom/sshtools/common/util/ByteArrayWriter;->writeBoolean(Z)V

    .line 194
    iget-object v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-direct {p0, v0, v1}, Lcom/sshtools/client/PublicKeyAuthenticator;->writePublicKey(Lcom/sshtools/common/util/ByteArrayWriter;Lcom/sshtools/common/ssh/components/SshPublicKey;)V

    .line 196
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->toByteArray()[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 187
    :try_start_1
    invoke-virtual {v0}, Lcom/sshtools/common/util/ByteArrayWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method protected abstract getAuthenticatingKey()Lcom/sshtools/common/ssh/components/SshKeyPair;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 305
    const-string v0, "publickey"

    return-object v0
.end method

.method protected abstract getNextKey()Lcom/sshtools/common/ssh/components/SshPublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected getSignatureGenerator()Lcom/sshtools/common/publickey/SignatureGenerator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/publickey/InvalidPassphraseException;
        }
    .end annotation

    .line 252
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->getAuthenticatingKey()Lcom/sshtools/common/ssh/components/SshKeyPair;

    move-result-object v0

    return-object v0
.end method

.method protected abstract hasCredentialsRemaining()Z
.end method

.method protected onStartAuthentication(Lcom/sshtools/synergy/ssh/Connection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sshtools/synergy/ssh/Connection<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public processMessage(Lcom/sshtools/common/util/ByteArrayReader;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 258
    invoke-virtual {p1}, Lcom/sshtools/common/util/ByteArrayReader;->read()I

    move-result p1

    const/16 v0, 0x33

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 261
    :cond_0
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 262
    const-string p1, "Received SSH_MSG_USERAUTH_PK_OK"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-object p1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-interface {p1}, Lcom/sshtools/common/ssh/components/SshPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->currentKey:Lcom/sshtools/common/ssh/components/SshPublicKey;

    invoke-static {v0}, Lcom/sshtools/common/publickey/SshKeyUtils;->getFingerprint(Lcom/sshtools/common/ssh/components/SshPublicKey;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Server accepts {} {}"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_1
    iput-boolean v1, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->doPublicKeyAuth()V
    :try_end_0
    .catch Lcom/sshtools/common/ssh/SshException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 270
    :goto_0
    const-string v0, "Public key operation failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/sshtools/common/logger/Log;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 271
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->failure()V

    :goto_1
    return v1

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->hasCredentialsRemaining()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->setupNextKey()Z

    .line 279
    iput-boolean v2, p0, Lcom/sshtools/client/PublicKeyAuthenticator;->isAuthenticating:Z

    .line 280
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->doPublicKeyAuth()V

    return v1

    .line 283
    :cond_3
    invoke-static {}, Lcom/sshtools/common/logger/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 284
    invoke-virtual {p0}, Lcom/sshtools/client/PublicKeyAuthenticator;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "No more credentials"

    invoke-static {v0, p1}, Lcom/sshtools/common/logger/Log;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_4
    invoke-virtual {p0, v2}, Lcom/sshtools/client/PublicKeyAuthenticator;->done(Z)V

    :goto_2
    return v2
.end method

.method public sign(Lcom/sshtools/common/ssh/components/SshPrivateKey;Ljava/lang/String;[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 297
    :try_start_0
    invoke-interface {p1, p3, p2}, Lcom/sshtools/common/ssh/components/SshPrivateKey;->sign([BLjava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 299
    new-instance p2, Lcom/sshtools/common/ssh/SshException;

    invoke-direct {p2, p1}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
