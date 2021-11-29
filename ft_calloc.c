/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yabtaour <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/22 17:15:20 by yabtaour          #+#    #+#             */
/*   Updated: 2021/11/25 14:40:29 by yabtaour         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */
#include "ft_printf.h"

void	*ft_calloc(size_t count, size_t size)
{
	size_t	len;
	size_t	i;
	char	*str;

	i = 0;
	len = count * size;
	str = (void *)malloc(len);
	if (!str)
		return (NULL);
	while (i < len)
	{
		str[i] = '\0';
		i++;
	}
	return (str);
}
