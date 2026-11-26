.class public abstract Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;
.super Ljava/lang/Object;
.source "Ssh2BaseJCEPrivateKey.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshPrivateKey;


# instance fields
.field protected customProvider:Ljava/security/Provider;

.field protected prv:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;->prv:Ljava/security/PrivateKey;

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljava/security/Provider;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;->prv:Ljava/security/PrivateKey;

    .line 43
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;->customProvider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method public getJCEPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;->prv:Ljava/security/PrivateKey;

    return-object v0
.end method

.method protected getJCESignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/Ssh2BaseJCEPrivateKey;->customProvider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    .line 55
    :try_start_0
    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 61
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object p1

    goto :goto_1

    .line 64
    :cond_1
    invoke-static {p1}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getProviderForAlgorithm(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object p1

    :goto_1
    move-object v0, p1

    :cond_2
    return-object v0
.end method
