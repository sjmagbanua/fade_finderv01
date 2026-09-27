abstract class OnboardingScreenEvent {
  const OnboardingScreenEvent();
}

class PageViewChanged extends OnboardingScreenEvent {
  final int index;
  const PageViewChanged(this.index);
}
