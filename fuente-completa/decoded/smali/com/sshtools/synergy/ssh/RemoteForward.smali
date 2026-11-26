.class public Lcom/sshtools/synergy/ssh/RemoteForward;
.super Ljava/lang/Object;
.source "RemoteForward.java"


# instance fields
.field hostToConnect:Ljava/lang/String;

.field portToConnect:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sshtools/synergy/ssh/RemoteForward;->hostToConnect:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/sshtools/synergy/ssh/RemoteForward;->portToConnect:I

    return-void
.end method


# virtual methods
.method public getHostToConnect()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/sshtools/synergy/ssh/RemoteForward;->hostToConnect:Ljava/lang/String;

    return-object v0
.end method

.method public getPortToConnect()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/sshtools/synergy/ssh/RemoteForward;->portToConnect:I

    return v0
.end method
