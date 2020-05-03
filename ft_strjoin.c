/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strjoin.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/05/03 13:35:17 by mstoops           #+#    #+#             */
/*   Updated: 2020/05/03 16:52:45 by mstoops          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strjoin(char const *s1, char const *s2)
{
	char	*str;

	if (!s1 && !s2)
		return (NULL);
	else if (!s1)
	{
		if (!(str = (char*)malloc(sizeof(char) * (ft_strlen(s2) + 1))))
			return (NULL);
		ft_strlcpy(str, s2, ft_strlen(s2) + 1);
	}
	else if (!s2)
	{
		if (!(str = (char*)malloc(sizeof(char) * (ft_strlen(s1) + 1))))
			return (NULL);
		ft_strlcpy(str, s1, ft_strlen(s1) + 1);
	}
	else
	{
		if (!(str = (char*)malloc(sizeof(char) *
			(ft_strlen(s1) + ft_strlen(s2) + 1))))
			return (NULL);
		ft_strlcpy(str, s1, ft_strlen(s1) + 1);
		ft_strlcat(str, s2, ft_strlen(s1) + ft_strlen(s2) + 1);
	}
	return (str);
}
