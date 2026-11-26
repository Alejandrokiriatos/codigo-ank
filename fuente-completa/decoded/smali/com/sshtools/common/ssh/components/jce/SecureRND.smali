.class public Lcom/sshtools/common/ssh/components/jce/SecureRND;
.super Ljava/lang/Object;
.source "SecureRND.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshSecureRandomGenerator;


# instance fields
.field rnd:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/sshtools/common/ssh/components/jce/JCEProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SecureRND;->rnd:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SecureRND;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public nextBytes([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    .line 49
    :try_start_0
    new-array v0, p3, [B

    .line 50
    iget-object v1, p0, Lcom/sshtools/common/ssh/components/jce/SecureRND;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    .line 51
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 53
    :catch_0
    new-instance v0, Lcom/sshtools/common/ssh/SshException;

    array-length p1, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ArrayIndexOutOfBoundsException: Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " on actual array length "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " with len="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    invoke-direct {v0, p1, p2}, Lcom/sshtools/common/ssh/SshException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public nextInt()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/sshtools/common/ssh/components/jce/SecureRND;->rnd:Ljava/security/SecureRandom;

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    return v0
.end method
