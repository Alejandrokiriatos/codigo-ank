.class public Lcom/sshtools/common/ssh/components/NoneHmac;
.super Ljava/lang/Object;
.source "NoneHmac.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshHmac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/NoneHmac$NoneHmacFactory;
    }
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 1

    const/4 v0, 0x0

    .line 73
    new-array v0, v0, [B

    return-object v0
.end method

.method public generate(J[BII[BI)V
    .locals 0

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "none"

    return-object v0
.end method

.method public getMacLength()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMacSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSecurityLevel()Lcom/sshtools/common/ssh/SecurityLevel;
    .locals 1

    .line 86
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    return-object v0
.end method

.method public init([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sshtools/common/ssh/SshException;
        }
    .end annotation

    return-void
.end method

.method public isETM()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public update([B)V
    .locals 0

    return-void
.end method

.method public verify(J[BII[BI)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
