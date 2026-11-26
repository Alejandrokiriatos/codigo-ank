.class Lcom/foxdebug/browser/Emulator$3;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Emulator;->addControl(Ljava/lang/String;ILjava/lang/String;)V
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

    .line 214
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    if-eqz p3, :cond_5

    .line 221
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetlistener(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Emulator$Callback;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 225
    :cond_0
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetseekBars(Lcom/foxdebug/browser/Emulator;)Ljava/util/HashMap;

    move-result-object p2

    const-string p3, "width"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string v0, "scale"

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetseekBars(Lcom/foxdebug/browser/Emulator;)Ljava/util/HashMap;

    move-result-object p2

    const-string p3, "height"

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, v0

    .line 231
    :goto_0
    const-string p1, "Emulator"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-virtual {p1}, Lcom/foxdebug/browser/Emulator;->getHeightProgress()I

    move-result p1

    .line 234
    iget-object p2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-virtual {p2}, Lcom/foxdebug/browser/Emulator;->getWidthProgress()I

    move-result p2

    .line 235
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-virtual {v1}, Lcom/foxdebug/browser/Emulator;->getScaleProgress()F

    move-result v1

    if-eq p3, v0, :cond_3

    .line 238
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetseekBars(Lcom/foxdebug/browser/Emulator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 239
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v1, p2, p1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$msetMaxScale(Lcom/foxdebug/browser/Emulator;II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 243
    :cond_3
    iget-object v2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetlistener(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Emulator$Callback;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/foxdebug/browser/Emulator$Callback;->onChange(IIF)V

    if-eq p3, v0, :cond_5

    .line 245
    iget-object p1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetselectedDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetselectedDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;

    move-result-object p1

    iget p1, p1, Lcom/foxdebug/browser/Device;->id:I

    iget-object p2, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetcustomDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;

    move-result-object p2

    iget p2, p2, Lcom/foxdebug/browser/Device;->id:I

    if-ne p1, p2, :cond_4

    goto :goto_1

    .line 253
    :cond_4
    iget-object p1, p0, Lcom/foxdebug/browser/Emulator$3;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {p1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetcustomDevice(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Device;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/foxdebug/browser/Emulator;->-$$Nest$mselectDevice(Lcom/foxdebug/browser/Emulator;Lcom/foxdebug/browser/Device;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
