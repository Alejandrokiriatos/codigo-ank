.class public Lcom/sshtools/common/ssh/components/jce/MD5Digest;
.super Lcom/sshtools/common/ssh/components/jce/AbstractDigest;
.source "MD5Digest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/MD5Digest$MD5DigestFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 49
    const-string v0, "MD5"

    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/components/jce/AbstractDigest;-><init>(Ljava/lang/String;)V

    return-void
.end method
