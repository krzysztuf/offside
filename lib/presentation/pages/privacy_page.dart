import 'package:flutter/material.dart';
import 'package:offside/core/extensions/theme_context_extension.dart';

class PrivatePolicyPage extends StatelessWidget {
  const PrivatePolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final titleStyle = context.textTheme.titleLarge;
    final textStyle = context.textTheme.bodyMedium;
    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Polityka Prywatności aplikacji Typownik',
                style: context.textTheme.headlineMedium,
              ),
              Text(
                'Data ostatniej aktualizacji: 26.05.2024',
                style: textStyle,
              ),
              Text(
                'Dziękujemy za wybór aplikacji Typownik! Ochrona Twoich danych osobowych jest dla nas priorytetem. Niniejsza Polityka Prywatności wyjaśnia, jakie dane zbieramy, jak je wykorzystujemy oraz jakie są Twoje prawa związane z przetwarzaniem danych osobowych.',
                style: textStyle,
              ),
              Text(
                '1. Administrator danych',
                style: titleStyle,
              ),
              Text(
                'Administrator danych osobowych – ShakeIT Krzysztof Potrząsaj, adres: [Adres siedziby firmy lub adres zamieszkania], e-mail: krzysztof.shakeit@gmail.com.',
                style: textStyle,
              ),
              Text(
                '2. Jakie dane zbieramy?',
                style: titleStyle,
              ),
              Text(
                'W ramach działania aplikacji Typownik zbieramy następujące dane osobowe:\n- Imię i nazwisko użytkownika,\n- Adres e-mail.',
                style: textStyle,
              ),
              Text(
                '3. Cel przetwarzania danych',
                style: titleStyle,
              ),
              Text(
                'Dane osobowe użytkowników przetwarzane są wyłącznie w celu zapewnienia prawidłowego funkcjonowania aplikacji, w tym:\n- Zarządzania kontem użytkownika,\n- Kontaktowania się z użytkownikiem w sprawach związanych z działaniem aplikacji.',
                style: textStyle,
              ),
              Text(
                '4. Podstawa prawna przetwarzania',
                style: titleStyle,
              ),
              Text(
                'Dane są przetwarzane na podstawie zgody użytkownika, wyrażonej podczas rejestracji w aplikacji.',
                style: textStyle,
              ),
              Text(
                '5. Odbiorcy danych',
                style: titleStyle,
              ),
              Text(
                'Informujemy, że zebrane dane osobowe nie są przekazywane żadnym trzecim podmiotom i są wykorzystywane wyłącznie w zakresie niezbędnym do realizacji funkcjonalności aplikacji Typownik.',
                style: textStyle,
              ),
              Text(
                '6. Profilowanie',
                style: titleStyle,
              ),
              Text(
                'Aplikacja Typownik nie wykorzystuje danych osobowych do celów profilowania, w tym profilowania marketingowego.',
                style: textStyle,
              ),
              Text(
                '7. Prawa użytkownika',
                style: titleStyle,
              ),
              Text(
                'Jako użytkownik aplikacji masz prawo do:\n- Dostępu do swoich danych osobowych,\n- Sprostowania nieprawidłowych lub nieaktualnych danych,\n- Usunięcia danych (prawo do bycia zapomnianym) w przypadku cofnięcia zgody na przetwarzanie danych,\n- Ograniczenia przetwarzania danych,\n- Przenoszenia danych,\n- Wniesienia sprzeciwu wobec przetwarzania danych,\n- Cofnięcia zgody na przetwarzanie danych w dowolnym momencie bez wpływu na zgodność z prawem przetwarzania, którego dokonano na podstawie zgody przed jej cofnięciem.',
                style: textStyle,
              ),
              Text(
                '8. Usunięcie konta',
                style: titleStyle,
              ),
              Text(
                'Możesz usunąćswoje konto w aplikacji Typownik w dowolnym momencie. Usunięcie konta spowoduje trwałe usunięcie wszystkich związanych z nim danych osobowych.',
                style: textStyle,
              ),
              Text(
                '9. Zmiany w polityce prywatności',
                style: titleStyle,
              ),
              Text(
                'Zastrzegamy sobie prawo do dokonywania zmian w Polityce Prywatności. O wszelkich zmianach będziemy informować poprzez aktualizację daty na górze tego dokumentu oraz poprzez naszą aplikację lub e-mail.',
                style: textStyle,
              ),
              Text(
                '10. Kontakt',
                style: titleStyle,
              ),
              Text(
                'W przypadku jakichkolwiek pytań dotyczących przetwarzania Twoich danych osobowych prosimy o kontakt pod adresem e-mail: krzysztof.shakeit@gmail.com.',
                style: textStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
