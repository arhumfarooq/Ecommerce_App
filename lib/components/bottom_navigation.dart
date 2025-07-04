import 'package:flutter/material.dart';

class NavigationContainer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTabChange;

  const NavigationContainer({
    super.key,
    required this.selectedIndex,
    required this.onTabChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Color(0XFF242424),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavIcon(
              icon: Icons.home,
              label: "Home",
              isSelected: selectedIndex == 0,
              onTap: () => onTabChange(0),
            ),
            _NavIcon(
              icon: Icons.search,
              label: "Explore",
              isSelected: selectedIndex == 1,
              onTap: () => onTabChange(1),
            ),
            _NavIcon(
              icon: Icons.shopping_cart_checkout,
              label: "Card",
              isSelected: selectedIndex == 2,
              onTap: () => onTabChange(2),
            ),
            _NavIcon(
              icon: Icons.person,
              label: "Profile",
              isSelected: selectedIndex == 3,
              onTap: () => onTabChange(3),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _NavIcon({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Colors.white : Colors.grey;
    return GestureDetector(
      
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Text(label, style: TextStyle(color: color, fontSize: 10)),
        ],
      ),
    );
  }
}
