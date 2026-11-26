.class Lcom/foxdebug/browser/Emulator$2;
.super Ljava/lang/Object;
.source "Emulator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/foxdebug/browser/Emulator;->setReference(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/foxdebug/browser/Emulator;

.field final synthetic val$height:I

.field final synthetic val$heightSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$maxHeight:I

.field final synthetic val$maxWidth:I

.field final synthetic val$scaleSeekBar:Landroid/widget/SeekBar;

.field final synthetic val$width:I

.field final synthetic val$widthSeekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/foxdebug/browser/Emulator;IIILandroid/widget/SeekBar;ILandroid/widget/SeekBar;Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
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

    .line 140
    iput-object p1, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    iput p2, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxHeight:I

    iput p3, p0, Lcom/foxdebug/browser/Emulator$2;->val$height:I

    iput p4, p0, Lcom/foxdebug/browser/Emulator$2;->val$width:I

    iput-object p5, p0, Lcom/foxdebug/browser/Emulator$2;->val$widthSeekBar:Landroid/widget/SeekBar;

    iput p6, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxWidth:I

    iput-object p7, p0, Lcom/foxdebug/browser/Emulator$2;->val$heightSeekBar:Landroid/widget/SeekBar;

    iput-object p8, p0, Lcom/foxdebug/browser/Emulator$2;->val$scaleSeekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-virtual {v0}, Lcom/foxdebug/browser/Emulator;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 144
    iget v0, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxHeight:I

    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-virtual {v1}, Lcom/foxdebug/browser/Emulator;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 145
    iget v1, p0, Lcom/foxdebug/browser/Emulator$2;->val$height:I

    .line 146
    iget v2, p0, Lcom/foxdebug/browser/Emulator$2;->val$width:I

    .line 148
    iget-object v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$widthSeekBar:Landroid/widget/SeekBar;

    iget v4, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxWidth:I

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 149
    iget-object v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$heightSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 150
    iget v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$width:I

    iget v4, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxWidth:I

    if-gt v3, v4, :cond_0

    iget-object v3, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v3}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetinitialized(Lcom/foxdebug/browser/Emulator;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->val$heightSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxHeight:I

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 152
    iget v1, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxHeight:I

    .line 155
    :cond_1
    iget v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$height:I

    if-gt v3, v0, :cond_2

    iget-object v3, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v3}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetinitialized(Lcom/foxdebug/browser/Emulator;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/foxdebug/browser/Emulator$2;->val$widthSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 157
    iget v2, p0, Lcom/foxdebug/browser/Emulator$2;->val$maxWidth:I

    .line 160
    :cond_3
    iget-object v3, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v3, v2, v1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$msetMaxScale(Lcom/foxdebug/browser/Emulator;II)V

    .line 161
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->val$scaleSeekBar:Landroid/widget/SeekBar;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setMin(I)V

    .line 162
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->val$scaleSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 163
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetlistener(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Emulator$Callback;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 164
    iget-object v1, p0, Lcom/foxdebug/browser/Emulator$2;->this$0:Lcom/foxdebug/browser/Emulator;

    invoke-static {v1}, Lcom/foxdebug/browser/Emulator;->-$$Nest$fgetlistener(Lcom/foxdebug/browser/Emulator;)Lcom/foxdebug/browser/Emulator$Callback;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v3}, Lcom/foxdebug/browser/Emulator$Callback;->onChange(IIF)V

    :cond_4
    return-void
.end method
