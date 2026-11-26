.class public Lcom/sshtools/common/ssh/IncompatibleAlgorithm;
.super Ljava/lang/Object;
.source "IncompatibleAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
    }
.end annotation


# instance fields
.field localAlgorithms:[Ljava/lang/String;

.field remoteAlgorithms:[Ljava/lang/String;

.field type:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;


# direct methods
.method public constructor <init>(Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->type:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    .line 35
    iput-object p2, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->localAlgorithms:[Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->remoteAlgorithms:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->localAlgorithms:[Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteAlgorithms()[Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->remoteAlgorithms:[Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/sshtools/common/ssh/IncompatibleAlgorithm;->type:Lcom/sshtools/common/ssh/IncompatibleAlgorithm$ComponentType;

    return-object v0
.end method
