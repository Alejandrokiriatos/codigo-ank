.class Lcom/foxdebug/sdcard/WorkspaceIndex$Job;
.super Ljava/lang/Object;
.source "WorkspaceIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/foxdebug/sdcard/WorkspaceIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Job"
.end annotation


# instance fields
.field volatile cancelled:Z

.field final id:Ljava/lang/String;

.field volatile signal:Landroid/os/CancellationSignal;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1762
    iput-boolean v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    .line 1766
    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 1770
    iput-boolean v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    .line 1771
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->signal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    .line 1772
    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-void
.end method

.method restoreSignal(Landroid/os/CancellationSignal;Landroid/os/CancellationSignal;)V
    .locals 1

    .line 1786
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->signal:Landroid/os/CancellationSignal;

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1787
    :cond_0
    iput-object p2, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->signal:Landroid/os/CancellationSignal;

    .line 1788
    iget-boolean p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->cancel()V

    :cond_1
    :goto_0
    return-void
.end method

.method setSignal(Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 2

    .line 1776
    iget-object v0, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->signal:Landroid/os/CancellationSignal;

    .line 1777
    iput-object p1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->signal:Landroid/os/CancellationSignal;

    .line 1778
    iget-boolean v1, p0, Lcom/foxdebug/sdcard/WorkspaceIndex$Job;->cancelled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    return-object v0
.end method
