.class public Lcom/sshtools/common/ssh/components/jce/ArcFour128$ArcFour128Factory;
.super Ljava/lang/Object;
.source "ArcFour128.java"

# interfaces
.implements Lcom/sshtools/common/ssh/components/SshCipherFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/ssh/components/jce/ArcFour128;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArcFour128Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/ssh/components/SshCipherFactory<",
        "Lcom/sshtools/common/ssh/components/jce/ArcFour128;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
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

    .line 40
    invoke-virtual {p0}, Lcom/sshtools/common/ssh/components/jce/ArcFour128$ArcFour128Factory;->create()Lcom/sshtools/common/ssh/components/jce/ArcFour128;

    move-result-object v0

    return-object v0
.end method

.method public create()Lcom/sshtools/common/ssh/components/jce/ArcFour128;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/sshtools/common/ssh/components/jce/ArcFour128;

    invoke-direct {v0}, Lcom/sshtools/common/ssh/components/jce/ArcFour128;-><init>()V

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 49
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "arcfour128"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public isEnabledByDefault()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
