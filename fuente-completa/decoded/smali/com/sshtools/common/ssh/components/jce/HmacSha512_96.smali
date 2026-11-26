.class public Lcom/sshtools/common/ssh/components/jce/HmacSha512_96;
.super Lcom/sshtools/common/ssh/components/jce/HmacSha512;
.source "HmacSha512_96.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacSha512_96$HmacSha512_96Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xc

    .line 49
    invoke-direct {p0, v0}, Lcom/sshtools/common/ssh/components/jce/HmacSha512;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "hmac-sha2-512-96"

    return-object v0
.end method
