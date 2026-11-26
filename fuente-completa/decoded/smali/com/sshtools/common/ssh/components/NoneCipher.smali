.class public Lcom/sshtools/common/ssh/components/NoneCipher;
.super Lcom/sshtools/common/ssh/components/AbstractSshCipher;
.source "NoneCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/components/NoneCipher$NoneCipherFactory;
    }
.end annotation


# static fields
.field private static final NONE:Ljava/lang/String; = "none"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 66
    sget-object v0, Lcom/sshtools/common/ssh/SecurityLevel;->WEAK:Lcom/sshtools/common/ssh/SecurityLevel;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {p0, v2, v0, v1}, Lcom/sshtools/common/ssh/components/AbstractSshCipher;-><init>(Ljava/lang/String;Lcom/sshtools/common/ssh/SecurityLevel;I)V

    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getKeyLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "None"

    return-object v0
.end method

.method public init(I[B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public transform([BI[BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
