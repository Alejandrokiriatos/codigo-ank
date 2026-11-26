.class public Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;
.source "Ssh2EcdsaSha2Nist384PublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist384PublicKey$Ssh2EcdsaSha2Nist384PublicKeyFactory;
    }
.end annotation


# static fields
.field private static final CERT_TYPE:Ljava/lang/String; = "ecdsa-sha2-nistp384"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    const-string v0, "secp384r1"

    const-string v1, "nistp384"

    const-string v2, "ecdsa-sha2-nistp384"

    const-string v3, "SHA384withECDSA"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOid()[B
    .locals 1

    const/4 v0, 0x5

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x2bt
        -0x7ft
        0x4t
        0x0t
        0x22t
    .end array-data
.end method
