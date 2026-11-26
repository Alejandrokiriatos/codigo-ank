.class public Lcom/sshtools/common/ssh/components/jce/HmacSha256_96;
.super Lcom/sshtools/common/ssh/components/jce/HmacSha256;
.source "HmacSha256_96.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacSha256_96$HmacSha256_96Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 50
    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/components/jce/HmacSha256;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "hmac-sha2-256-96"

    return-object v0
.end method
