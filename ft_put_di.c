/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_put_di.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kaokazak <kaokazak@student.42tokyo.jp>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/04/29 13:30:04 by kaokazak          #+#    #+#             */
/*   Updated: 2024/08/19 05:32:00 by kaokazak         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_putnbr_len(int num)
{
	int	len;

	ft_putnbr_fd(num, 1);
	len = 2;
	if (num >= 0)
	{
		num *= -1;
		len--;
	}
	while (num < -9)
	{
		len++;
		num /= 10;
	}
	return (len);
}
