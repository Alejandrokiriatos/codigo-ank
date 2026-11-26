.class Lcom/foxdebug/browser/Emulator$1;
.super Lcom/foxdebug/browser/DeviceListView$Callback;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Emulator;-><init>(Landroid/content/Context;Lcom/foxdebug/system/Ui$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Emulator;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Emulator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator$1;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-direct {p0}, Lcom/foxdebug/browser/DeviceListView$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/foxdebug/browser/Device;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator$1;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v0, p1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$mselectDevice(Lcom/foxdebug/browser/Emulator;Lcom/foxdebug/browser/Device;)V

    return-void
.end method
