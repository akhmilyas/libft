/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strchr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/02 19:47:50 by mstoops           #+#    #+#             */
/*   Updated: 2020/05/02 19:54:24 by mstoops          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strchr(const char *s, int c)
{
	unsigned char	stop;
	char			*str;

	str = (char*)s;
	stop = (unsigned char)c;
	while (*str)
	{
		if (*str == stop)
			return (str);
		str++;
	}
	if (*str == stop)
		return (str);
	return (NULL);
}
