.class Lcom/sshtools/synergy/nio/SelectorThread$Registration;
.super Ljava/lang/Object;
.source "SelectorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sshtools/synergy/nio/SelectorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Registration"
.end annotation


# instance fields
.field attachment:Ljava/lang/Object;

.field channel:Ljava/nio/channels/SelectableChannel;

.field interestedOps:I

.field final synthetic this$0:Lcom/sshtools/synergy/nio/SelectorThread;


# direct methods
.method constructor <init>(Lcom/sshtools/synergy/nio/SelectorThread;Ljava/nio/channels/SelectableChannel;ILjava/lang/Object;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->this$0:Lcom/sshtools/synergy/nio/SelectorThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->channel:Ljava/nio/channels/SelectableChannel;

    .line 557
    iput p3, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->interestedOps:I

    .line 558
    iput-object p4, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->attachment:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAttachment()Ljava/lang/Object;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->attachment:Ljava/lang/Object;

    return-object v0
.end method

.method public getChannel()Ljava/nio/channels/SelectableChannel;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->channel:Ljava/nio/channels/SelectableChannel;

    return-object v0
.end method

.method public getInterestedOps()I
    .locals 1

    .line 566
    iget v0, p0, Lcom/sshtools/synergy/nio/SelectorThread$Registration;->interestedOps:I

    return v0
.end method
