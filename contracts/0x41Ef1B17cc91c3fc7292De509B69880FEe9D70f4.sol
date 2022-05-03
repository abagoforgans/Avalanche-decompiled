contract main {




// =====================  Runtime code  =====================


#
#  - sub_7434b710(?)
#
function _fallback() payable {
    revert
}

function sub_2d1d396b(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
    call 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.redeem(address arg1, bool arg2) with:
         gas gas_remaining wei
        args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1:
        require ext_code.size(0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad)
        call 0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad.stake(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad)
        call 0x85784d5e2ccae89bcb39ebf0ac6cdc93d42d99ad.claim(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_664bec34(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
    staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
    staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= arg1:
        if (3988000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) <= 3:
            if not (3988000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                if -1997 * ext_call.return_data[50 len 14] / 1994 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not -1997 * ext_call.return_data[50 len 14] / 1994:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 / -1997 * ext_call.return_data[50 len 14] / 1994 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * -1997 * ext_call.return_data[50 len 14] / 1994 / 997 * -1997 * ext_call.return_data[50 len 14] / 1994 != ext_call.return_data[18 len 14]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[50 len 14]:
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 / (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 / 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 != ext_call.return_data[18 len 14]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[50 len 14]:
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                                else:
                                                    if ext_call.return_data[0]:
                                                        return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                                ('iszero', ('ext_call.return_data', 0, 32))
        else:
            s = ((3988000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / 2) + 1
            t = (3988000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14])
            while s < t:
                require s
                s = ((3988000 * ext_call.return_data[0] * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / s) + s / 2
                t = s
                continue 
            if t - (1997 * ext_call.return_data[50 len 14]) / 1994 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if not t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1000 * ext_call.return_data[50 len 14]:
                        require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                        staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                            if Mask(112, 0, ext_call.return_data[32]):
                                if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                        ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                        ('iszero', ('ext_call.return_data', 0, 32))
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if Mask(112, 0, ext_call.return_data[32]):
                                if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                        ('iszero', ('ext_call.return_data', 0, 32))
                                else:
                                    if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                        else:
                                            if ext_call.return_data[0]:
                                                return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                        ('iszero', ('ext_call.return_data', 0, 32))
            else:
                if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 / t - (1997 * ext_call.return_data[50 len 14]) / 1994 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                    if not ext_call.return_data[50 len 14]:
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]):
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                else:
                    if 997 * ext_call.return_data[18 len 14] * t - (1997 * ext_call.return_data[50 len 14]) / 1994 / 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 != ext_call.return_data[18 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[50 len 14]:
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                    else:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]):
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                            else:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / ext_call.return_data[0] - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (ext_call.return_data[0] * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], 0 / ext_call.return_data[0]
                                            else:
                                                if ext_call.return_data[0]:
                                                    return ext_call.return_data[0], -1 * 10^9 * ext_call.return_data[0] / ext_call.return_data[0]
                                            ('iszero', ('ext_call.return_data', 0, 32))
    else:
        if (3988000 * arg1 * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) <= 3:
            if not (3988000 * arg1 * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]):
                if -1997 * ext_call.return_data[50 len 14] / 1994 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not -1997 * ext_call.return_data[50 len 14] / 1994:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                else:
                    if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 / -1997 * ext_call.return_data[50 len 14] / 1994 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * -1997 * ext_call.return_data[50 len 14] / 1994 / 997 * -1997 * ext_call.return_data[50 len 14] / 1994 != ext_call.return_data[18 len 14]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[50 len 14]:
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * -1997 * ext_call.return_data[50 len 14] / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / 997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * -1997 * ext_call.return_data[50 len 14] / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / arg1 - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (-1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994 / (997 * -1997 * Mask(112, 0, ext_call.return_data[32]) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
            else:
                if (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                43,
                                0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                                mem[207 len 21]
                if ext_call.return_data[50 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if ext_call.return_data[18 len 14] <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                40,
                                0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                                mem[204 len 24]
                if not (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                else:
                    if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 / (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 != 997:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                    else:
                        if 997 * ext_call.return_data[18 len 14] * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 / 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 != ext_call.return_data[18 len 14]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if not ext_call.return_data[50 len 14]:
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994:
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994:
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / 997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                        else:
                            if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (997 * (-1997 * ext_call.return_data[50 len 14]) + 1 / 1994) + (1000 * ext_call.return_data[50 len 14]):
                                require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                                staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994):
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                else:
                                    if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / arg1 - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[32]):
                                        if not 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
                                        else:
                                            if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if Mask(112, 0, ext_call.return_data[0]):
                                                require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                                if (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - ((-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                                else:
                                                    staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                            gas gas_remaining wei
                                                           args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994 / (997 * (-1997 * Mask(112, 0, ext_call.return_data[32])) + 1 / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                        gas gas_remaining wei
                                                       args ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                                staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                    if arg1:
                                                        return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                                else:
                                                    if arg1:
                                                        return arg1, -1 * 10^9 * arg1 / arg1
                                                ('iszero', ('param', 'arg1'))
        else:
            s = ((3988000 * arg1 * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / 2) + 1
            t = (3988000 * arg1 * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14])
            while s < t:
                require s
                s = ((3988000 * arg1 * ext_call.return_data[50 len 14]) + (3988009 * ext_call.return_data[50 len 14] * ext_call.return_data[50 len 14]) / s) + s / 2
                t = s
                continue 
            if t - (1997 * ext_call.return_data[50 len 14]) / 1994 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0x77556e697377617056324c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e,
                            mem[207 len 21]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            40,
                            0xfe556e697377617056324c6962726172793a20494e53554646494349454e545f4c49515549444954,
                            mem[204 len 24]
            if not t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                if ext_call.return_data[50 len 14]:
                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1000 * ext_call.return_data[50 len 14]:
                        require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                        staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                            if Mask(112, 0, ext_call.return_data[32]):
                                if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if arg1:
                                                return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                        else:
                                            if arg1:
                                                return arg1, -1 * 10^9 * arg1 / arg1
                                        ('iszero', ('param', 'arg1'))
                                else:
                                    if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if arg1:
                                                return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                        else:
                                            if arg1:
                                                return arg1, -1 * 10^9 * arg1 / arg1
                                        ('iszero', ('param', 'arg1'))
                        else:
                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if Mask(112, 0, ext_call.return_data[32]):
                                if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if arg1:
                                                return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                        else:
                                            if arg1:
                                                return arg1, -1 * 10^9 * arg1 / arg1
                                        ('iszero', ('param', 'arg1'))
                                else:
                                    if ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if Mask(112, 0, ext_call.return_data[0]):
                                        require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                        if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                        else:
                                            staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                        staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] <= ext_call.return_data[0]:
                                            if arg1:
                                                return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                        else:
                                            if arg1:
                                                return arg1, -1 * 10^9 * arg1 / arg1
                                        ('iszero', ('param', 'arg1'))
            else:
                if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 / t - (1997 * ext_call.return_data[50 len 14]) / 1994 != 997:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                    if not ext_call.return_data[50 len 14]:
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                    else:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]):
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 0 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                else:
                    if 997 * ext_call.return_data[18 len 14] * t - (1997 * ext_call.return_data[50 len 14]) / 1994 / 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 != ext_call.return_data[18 len 14]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not ext_call.return_data[50 len 14]:
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if 997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994:
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994:
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / 997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                    else:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]) < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if (997 * t - (1997 * ext_call.return_data[50 len 14]) / 1994) + (1000 * ext_call.return_data[50 len 14]):
                            require ext_code.size(0x425c45adfb53861e5db8f17d9b072ab60d4404d8)
                            staticcall 0x425c45adfb53861e5db8f17d9b072ab60d4404d8.totalSupply() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994):
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if 0 / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                            else:
                                if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / arg1 - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) != ext_call.return_data[0]:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if Mask(112, 0, ext_call.return_data[32]):
                                    if not 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])):
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < 0 / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, 0 / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
                                    else:
                                        if ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if Mask(112, 0, ext_call.return_data[0]):
                                            require ext_code.size(0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b)
                                            if (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]) < ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0]):
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, (arg1 * ext_call.return_data[0]) - (t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 * ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
                                            else:
                                                staticcall 0xf1ac1ed0ef7f61223df64e52a6e6e1d6ca6f992b.valuation(address arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 0x425c45adfb53861e5db8f17d9b072ab60d4404d8, ext_call.return_data[0] * 997 * Mask(112, 0, ext_call.return_data[0]) * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994 / (997 * t - (1997 * Mask(112, 0, ext_call.return_data[32])) / 1994) + (1000 * Mask(112, 0, ext_call.return_data[32])) / Mask(112, 0, ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.payoutFor(uint256 arg1) with:
                                                    gas gas_remaining wei
                                                   args ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f)
                                            staticcall 0x90a08fdf9f433954930f19e97fe9a1b0bdbf5c5f.maxPayout() with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] <= ext_call.return_data[0]:
                                                if arg1:
                                                    return arg1, (10^9 * ext_call.return_data[0]) - (10^9 * arg1) / arg1
                                            else:
                                                if arg1:
                                                    return arg1, -1 * 10^9 * arg1 / arg1
                                            ('iszero', ('param', 'arg1'))
    revert
}



}
