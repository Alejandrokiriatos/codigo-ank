.class public abstract Lcom/sshtools/common/ssh/components/AbstractSshCipher;
.super Ljava/lang/Object;
.source "AbstractSshCipher.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshCipher;


# instance fields
.field final algorithm:Ljava/lang/String;

.field final priority:I

.field final securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->algorithm:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    .line 46
    iput p3, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->priority:I

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getBlockSize()I
.end method

.method public abstract getKeyLength()I
.end method

.method public getMacLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->priority:I

    return v0
.end method

.method public abstract getProviderName()Ljava/lang/String;
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->securityLevel:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public abstract init(I[B[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public isMAC()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public transform([B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    .line 100
    array-length v5, p1

    const/4 v2, 0x0

    move-object v3, p1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/AbstractSshCipher;->transform([BI[BII)V

    return-void
.end method

.method public abstract transform([BI[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
