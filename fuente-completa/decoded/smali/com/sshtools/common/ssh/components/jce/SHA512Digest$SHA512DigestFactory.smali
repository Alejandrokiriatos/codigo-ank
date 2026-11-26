.class public Lcom/sshtools/common/ssh/components/jce/SHA512Digest$SHA512DigestFactory;
.super Ljava/lang/Object;
.source "SHA512Digest.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/DigestFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/SHA512Digest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SHA512DigestFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/DigestFactory<",
        "Lcom/sshtools/common/ssh/components/jce/SHA512Digest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/SHA512Digest$SHA512DigestFactory;->create()Lcom/sshtools/common/ssh/components/jce/SHA512Digest;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/SHA512Digest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/SHA512Digest;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/SHA512Digest;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SHA-512"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "SHA512"

    aput-object v2, v0, v1

    return-object v0
.end method
