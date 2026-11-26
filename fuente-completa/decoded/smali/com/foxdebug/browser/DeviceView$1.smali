.class Lcom/foxdebug/browser/DeviceView$1;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/DeviceView;->setOnSelect(Lcom/foxdebug/browser/DeviceView$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/DeviceView;

.field final synthetic val$callback:Lcom/foxdebug/browser/DeviceView$Callback;

.field final synthetic val$self:Lcom/foxdebug/browser/DeviceView;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/DeviceView;Lcom/foxdebug/browser/DeviceView$Callback;Lcom/foxdebug/browser/DeviceView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 483
    iput-object p1, p0, Lcom/foxdebug/browser/DeviceView$1;->this$0:Lcom/foxdebug/browser/DeviceView;

    iput-object p2, p0, Lcom/foxdebug/browser/DeviceView$1;->val$callback:Lcom/foxdebug/browser/DeviceView$Callback;

    iput-object p3, p0, Lcom/foxdebug/browser/DeviceView$1;->val$self:Lcom/foxdebug/browser/DeviceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 486
    iget-object p1, p0, Lcom/foxdebug/browser/DeviceView$1;->val$callback:Lcom/foxdebug/browser/DeviceView$Callback;

    iget-object v0, p0, Lcom/foxdebug/browser/DeviceView$1;->val$self:Lcom/foxdebug/browser/DeviceView;

    invoke-virtual {p1, v0}, Lcom/foxdebug/browser/DeviceView$Callback;->onSelect(Lcom/foxdebug/browser/DeviceView;)V

    return-void
.end method
