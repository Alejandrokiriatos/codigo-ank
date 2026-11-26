.class public Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist256PublicKey;
.super Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;
.source "Ssh2EcdsaSha2Nist256PublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2Nist256PublicKey$Ssh2EcdsaSha2Nist256PublicKeyFactory;
    }
.end annotation


# static fields
.field private static final CERT_TYPE:Ljava/lang/String; = "ecdsa-sha2-nistp256"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 47
    const-string v0, "secp256r1"

    const-string v1, "nistp256"

    const-string v2, "ecdsa-sha2-nistp256"

    const-string v3, "SHA256withECDSA"

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sshtools/common/ssh/components/jce/Ssh2EcdsaSha2NistPublicKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getOid()[B
    .locals 1

    const/16 v0, 0x8

    .line 51
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x2at
        -0x7at
        0x48t
        -0x32t
        0x3dt
        0x3t
        0x1t
        0x7t
    .end array-data
.end method
