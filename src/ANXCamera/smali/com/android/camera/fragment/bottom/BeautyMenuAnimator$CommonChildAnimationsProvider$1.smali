.class Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$1;
.super Ljava/lang/Object;
.source "BeautyMenuAnimator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;->expandAnimation(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;

.field final synthetic val$childView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;Landroid/view/View;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$1;->this$0:Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider;

    iput-object p2, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$1;->val$childView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .line 85
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 80
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/animation/AnimationMonitor;->animationStop(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 74
    invoke-static {}, Lcom/android/camera/animation/AnimationMonitor;->get()Lcom/android/camera/animation/AnimationMonitor;

    move-result-object v0

    const/16 v1, 0x12c

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/animation/AnimationMonitor;->animationStart(Ljava/lang/Object;I)V

    .line 75
    iget-object p1, p0, Lcom/android/camera/fragment/bottom/BeautyMenuAnimator$CommonChildAnimationsProvider$1;->val$childView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method
