/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/02 18:08:54 by mstoops           #+#    #+#             */
/*   Updated: 2020/05/02 18:39:42 by mstoops          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t dstsize)
{
	size_t	dstlen;
	size_t	i;

	dstlen = ft_strlen(dst);
	i = 0;
	while (i + dstlen < dstsize - 1 && src[i] && dstsize > 0)
	{
		dst[dstlen + i] = src[i];
		i++;
	}
	if (dstsize >= dstlen)
		dst[dstlen + i] = '\0';
	if (dstsize < dstlen + i)
		return (ft_strlen(src) + dstsize);
	return (ft_strlen(src) + dstlen);
}
