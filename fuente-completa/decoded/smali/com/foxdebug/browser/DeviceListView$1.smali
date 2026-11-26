.class Lcom/foxdebug/browser/DeviceListView$1;
.super Lcom/foxdebug/browser/DeviceView$Callback;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/DeviceListView;->add(Lcom/foxdebug/browser/Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/DeviceListView;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/DeviceListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 414
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    invoke-direct {p0}, Lcom/foxdebug/browser/DeviceView$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/foxdebug/browser/DeviceView;)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    iget-object v0, v0, Lcom/foxdebug/browser/DeviceListView;->callback:Lcom/foxdebug/browser/DeviceListView$Callback;

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    iget-object v0, v0, Lcom/foxdebug/browser/DeviceListView;->selectedDeviceView:Lcom/foxdebug/browser/DeviceView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    iget-object v0, v0, Lcom/foxdebug/browser/DeviceListView;->selectedDeviceView:Lcom/foxdebug/browser/DeviceView;

    invoke-virtual {v0}, Lcom/foxdebug/browser/DeviceView;->deselect()V

    .line 420
    :cond_1
    invoke-virtual {p1}, Lcom/foxdebug/browser/DeviceView;->select()V

    .line 422
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    iget-object v0, v0, Lcom/foxdebug/browser/DeviceListView;->callback:Lcom/foxdebug/browser/DeviceListView$Callback;

    iget-object v1, p1, Lcom/foxdebug/browser/DeviceView;->device:Lcom/foxdebug/browser/Device;

    invoke-virtual {v0, v1}, Lcom/foxdebug/browser/DeviceListView$Callback;->onSelect(Lcom/foxdebug/browser/Device;)V

    .line 423
    iget-object v0, p0, Lcom/foxdebug/browser/DeviceListView$1;->this$0:Lcom/foxdebug/browser/DeviceListView;

    iput-object p1, v0, Lcom/foxdebug/browser/DeviceListView;->selectedDeviceView:Lcom/foxdebug/browser/DeviceView;

    return-void
.end method
