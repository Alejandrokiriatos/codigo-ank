.class public Lcom/sshtools/common/ssh/components/jce/HmacMD596;
.super Lcom/sshtools/common/ssh/components/jce/AbstractHmac;
.source "HmacMD596.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacMD596$HmacMD596Factory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "hmac-md5-96"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 53
    sget-object v4, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v5, 0x0

    const-string v1, "HmacMD5"

    const/16 v2, 0x10

    const/16 v3, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;IILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "hmac-md5-96"

    return-object v0
.end method
