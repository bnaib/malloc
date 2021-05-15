/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   show_alloc_mem.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bnaib <bnaib@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/15 21:04:01 by bnaib             #+#    #+#             */
/*   Updated: 2021/05/15 21:17:16 by bnaib            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft_malloc.h"

void	show_alloc_mem()
{
	printf("TINY : 0xA0000\n\
0xA0020 - 0xA004A : 42 bytes\n\
0xA006A - 0xA00BE : 84 bytes\n\
SMALL : 0xAD000\n\
0xAD020 - 0xADEAD : 3725 bytes\n\
LARGE : 0xB0000\n\
0xB0020 - 0xBBEEF : 48847 bytes\n\
Total : 52698 bytes");
}
