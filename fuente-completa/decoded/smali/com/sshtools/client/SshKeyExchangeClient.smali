.class public abstract Lcom/sshtools/client/SshKeyExchangeClient;
.super Ljava/lang/Object;
.source "SshKeyExchangeClient.java"

# interfaces
.implements Lcom/sshtools/synergy/ssh/components/SshKeyExchange;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/synergy/ssh/components/SshKeyExchange<",
        "Lcom/sshtools/client/SshClientContext;",
        ">;"
    }
.end annotation


# instance fields
.field protected clientId:Ljava/lang/String;

.field protected clientKexInit:[B

.field protected e:Ljava/math/BigInteger;

.field protected exchangeHash:[B

.field protected f:Ljava/math/BigInteger;

.field protected firstPacketFollows:Z

.field hashAlgorithm:Ljava/lang/String;

.field protected hostKey:[B

.field protected key:Lcom/sshtools/common/ssh/components/SshPublicKey;

.field final priority:I

.field receivedNewKeys:Z

.field protected secret:Ljava/math/BigInteger;

.field private final securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

.field sentNewKeys:Z

.field protected serverId:Ljava/lang/String;

.field protected serverKexInit:[B

.field protected signature:[B

.field protected transport:Lcom/sshtools/synergy/ssh/SshTransport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sshtools/synergy/ssh/SshTransport<",
            "Lcom/sshtools/client/SshClientContext;",
            ">;"
        }
    .end annotation
.end field

.field protected useFirstPacket:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->sentNewKeys:Z

    .line 68
    iput-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->receivedNewKeys:Z

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->e:Ljava/math/BigInteger;

    .line 71
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->f:Ljava/math/BigInteger;

    .line 86
    iput-object p1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hashAlgorithm:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/sshtools/client/SshKeyExchangeClient;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 88
    iput p3, p0, Lcom/sshtools/client/SshKeyExchangeClient;->priority:I

    return-void
.end method


# virtual methods
.method protected calculateExchangeHash()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->transport:Lcom/sshtools/synergy/ssh/SshTransport;

    invoke-interface {v0}, Lcom/sshtools/synergy/ssh/SshTransport;->getContext()Lcom/sshtools/synergy/ssh/SshContext;

    move-result-object v0

    check-cast v0, Lcom/sshtools/client/SshClientContext;

    invoke-virtual {v0}, Lcom/sshtools/client/SshClientContext;->getComponentManager()Lcom/sshtools/common/ssh/components/ComponentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sshtools/common/ssh/components/ComponentManager;->supportedDigests()Lcom/sshtools/common/ssh/components/ComponentFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hashAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sshtools/common/ssh/components/ComponentFactory;->getInstance(Ljava/lang/String;)Lcom/sshtools/common/ssh/components/Component;

    move-result-object v0

    check-cast v0, Lcom/sshtools/common/ssh/components/Digest;

    .line 199
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->serverId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putString(Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->clientKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 206
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->clientKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 209
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->serverKexInit:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 210
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->serverKexInit:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 213
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hostKey:[B

    array-length v1, v1

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putInt(I)V

    .line 214
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hostKey:[B

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBytes([B)V

    .line 217
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->e:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 220
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->f:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 223
    iget-object v1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->secret:Ljava/math/BigInteger;

    invoke-interface {v0, v1}, Lcom/sshtools/common/ssh/components/Digest;->putBigInteger(Ljava/math/BigInteger;)V

    .line 226
    invoke-interface {v0}, Lcom/sshtools/common/ssh/components/Digest;->doFinal()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->exchangeHash:[B

    return-void
.end method

.method public getExchangeHash()[B
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->exchangeHash:[B

    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hashAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getHostKey()[B
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hostKey:[B

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->priority:I

    return v0
.end method

.method public getSecret()Ljava/math/BigInteger;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->secret:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public getSignature()[B
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->signature:[B

    return-object v0
.end method

.method public hasReceivedNewKeys()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->receivedNewKeys:Z

    return v0
.end method

.method public hasSentNewKeys()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->sentNewKeys:Z

    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->sentNewKeys:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->receivedNewKeys:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract processMessage([B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->exchangeHash:[B

    .line 166
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->hostKey:[B

    .line 167
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->signature:[B

    .line 168
    iput-object v0, p0, Lcom/sshtools/client/SshKeyExchangeClient;->secret:Ljava/math/BigInteger;

    return-void
.end method

.method public setReceivedNewKeys(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->receivedNewKeys:Z

    return-void
.end method

.method public setSentNewKeys(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/sshtools/client/SshKeyExchangeClient;->sentNewKeys:Z

    return-void
.end method
