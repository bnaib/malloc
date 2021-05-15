/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_malloc.h                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bnaib <bnaib@student.42.fr>                +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/15 20:29:41 by bnaib             #+#    #+#             */
/*   Updated: 2021/05/15 23:53:12 by bnaib            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_MALLOC_H
# define LIBFT_MALLOC_H
# include <stdlib.h>
# include <unistd.h>
# include <stdio.h>

void	*malloc(size_t size);
void	show_alloc_mem(void);

#endif
