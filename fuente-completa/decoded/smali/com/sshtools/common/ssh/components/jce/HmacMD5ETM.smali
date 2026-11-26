.class public Lcom/sshtools/common/ssh/components/jce/HmacMD5ETM;
.super Lcom/sshtools/common/ssh/components/jce/AbstractHmac;
.source "HmacMD5ETM.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/jce/HmacMD5ETM$HmacMD5ETMFactory;
    }
.end annotation


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "hmac-md5-etm@openssh.com"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 53
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v1, 0x1

    const-string v2, "HmacMD5"

    const/16 v3, 0x10

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sshtools/common/ssh/components/jce/AbstractHmac;-><init>(Ljava/lang/String;ILcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 58
    const-string v0, "hmac-md5-etm@openssh.com"

    return-object v0
.end method

.method public isETM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
