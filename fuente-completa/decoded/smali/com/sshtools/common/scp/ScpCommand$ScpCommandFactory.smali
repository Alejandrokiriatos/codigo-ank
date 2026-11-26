.class public Lcom/sshtools/common/scp/ScpCommand$ScpCommandFactory;
.super Ljava/lang/Object;
.source "ScpCommand.java"

# interfaces
.implements Lcom/sshtools/common/command/ExecutableCommand$ExecutableCommandFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/common/scp/ScpCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScpCommandFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sshtools/common/command/ExecutableCommand$ExecutableCommandFactory<",
        "Lcom/sshtools/common/scp/ScpCommand;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/sshtools/common/scp/ScpCommand;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/sshtools/common/scp/ScpCommand;

    invoke-direct {v0}, Lcom/sshtools/common/scp/ScpCommand;-><init>()V

    return-object v0
.end method

.method public bridge synthetic create()Lcom/sshtools/common/ssh/components/Component;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lcom/sshtools/common/scp/ScpCommand$ScpCommandFactory;->create()Lcom/sshtools/common/scp/ScpCommand;

    move-result-object v0

    return-object v0
.end method

.method public getKeys()[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 83
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "scp"

    aput-object v2, v0, v1

    return-object v0
.end method
