contract main {




// =====================  Runtime code  =====================


#
#  - sub_7c5b4a29(?)
#  - _fallback()
#
address sub_3401e168Address;
address sub_8355fc54Address;

function sub_3401e168(?) {
    return sub_3401e168Address
}

function sub_8355fc54(?) {
    return sub_8355fc54Address
}

function sub_ad4cfcbb(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 256
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[128] = ('cd', 36)[0]
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[160] = ('cd', 36)[1]
    require ('cd', 36)[2] == address(('cd', 36)[2])
    mem[192] = ('cd', 36)[2]
    mem[224] = ('cd', 36)[3]
    mem[256] = ('cd', 36)[4]
    mem[288] = ('cd', 36)[5]
    require ('cd', 36)[6] <= test266151307()
    require cd[36] + ('cd', 36)[6] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[6] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353 < 352 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(cd[36] + ('cd', 36)[6] + 4)]
    require cd[36] + ('cd', 36)[6] + cd[(cd[36] + ('cd', 36)[6] + 4)] + 36 <= calldata.size
    mem[384 len cd[(cd[36] + ('cd', 36)[6] + 4)]] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]]
    mem[320] = 352
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[132] == address(cd[132])
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 389] = msg.sender
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 421] = this.address
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 453] = ('cd', 36)[3]
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353] = 100
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 389 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 485] = 32
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 517] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 36).length)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 549 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), ('cd', 36)[3], 0
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 649] = 0
    call address(('cd', 36).length) with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), ('cd', 36)[3], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), ('cd', 36)[3], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 36).length:
                revert with memory
                  from 128
                   len ('cd', 36).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 36).length:
            require ('cd', 36).length >= 32
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            if not ('cd', 36)[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ('cd', 36)[3]:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 585] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 617] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 549] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 581 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 649] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 681] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 713 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 781] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 1133 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 1133] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1133 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 1101] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 1133 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 1133] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1133 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 745] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 745])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 745]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1134 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1134 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_code.size(sub_8355fc54Address)
            call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining wei
                args cd[100], address(cd[132])
        else:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 553] = this.address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 585] = sub_3401e168Address
            require ext_code.size(address(('cd', 36).length))
            staticcall address(('cd', 36).length).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 549] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 585] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 617] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 549] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 581 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 649] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 681] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 713 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 781] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 749] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 813] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 845] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 877] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 909] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 941] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 973] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1005] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1037] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1069] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1101 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 781] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1101] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1133 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1133] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1133 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1101] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 781] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1101] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1133 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1133] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1133 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 713 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 717] = cd[100]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 749] = address(cd[132])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 717 len ceil32(return_data.size) + 64]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 745 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 745] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 745])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 745]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 750] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 814] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 846] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 878] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 910] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 942] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 974] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1006] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1038] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1070] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 782] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1134 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 782] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1134 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 714 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 718] = cd[100]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 750] = address(cd[132])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 718 len ceil32(return_data.size) + 64]
    else:
        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 549] = return_data.size
        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 581 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 581] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 581])
            if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 581]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ('cd', 36)[3]:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 586] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 618] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 550] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 582 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 650] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 682] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 714 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 782] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1134 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1134 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args cd[100], address(cd[132])
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 746 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 815 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 746] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 746])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 746]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 847 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 751] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 815] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 847] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 879] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 911] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 943] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 975] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1007] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1039] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1071] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1103 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 783] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1103] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 1135 len (2 * ceil32(return_data.size)) + ceil32(('cd', 68).length) - (2 * ceil32(return_data.size))]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1103] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 783] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1103] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1135 len (2 * ceil32(return_data.size)) + ceil32(('cd', 68).length) - (2 * ceil32(return_data.size)) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (2 * ceil32(return_data.size)) + 715 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719] = cd[100]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 751] = address(cd[132])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
        else:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 554] = this.address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 586] = sub_3401e168Address
            require ext_code.size(address(('cd', 36).length))
            staticcall address(('cd', 36).length).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + 550] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 586] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 618] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 550] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 582 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 650] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 682] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 714 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 782] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 750] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 814] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 846] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 878] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 910] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 942] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 974] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1006] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1038] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1070] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 782] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1134 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 782] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1102] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 1134] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1134 len ceil32(('cd', 68).length) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 714 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 718] = cd[100]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 750] = address(cd[132])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 718 len ceil32(return_data.size) + 64]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 714] = return_data.size
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 746 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 715] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719] = 32
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 751] = 32
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 783] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 715
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 746] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 746])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(return_data.size) + ceil32(return_data.size) + 746]:
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 715] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719] = 32
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 751] = 42
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 783] = 'SafeERC20: ERC20 operation did n'
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 815] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 715
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719] = address(cd[4])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 751] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 815] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 847] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 879] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 911] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 943] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 975] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1007] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1039] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1071] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1103 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, 100) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) > cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1103] = 0
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 783] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1103] = ('cd', 68).length
                mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 1135] = 0
                require ext_code.size(sub_3401e168Address)
                call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + (4 * ceil32(return_data.size)) + ceil32(('cd', 68).length) + (-2 * ceil32(return_data.size)) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719] = cd[100]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 751] = address(cd[132])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.deposit(uint256 arg1, address arg2) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + (4 * ceil32(return_data.size)) + 719 len (3 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_7d8e3e0f(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 256
    require ('cd', 36).length == address(('cd', 36).length)
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[128] = ('cd', 36)[0]
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[160] = ('cd', 36)[1]
    require ('cd', 36)[2] == address(('cd', 36)[2])
    mem[192] = ('cd', 36)[2]
    mem[224] = ('cd', 36)[3]
    mem[256] = ('cd', 36)[4]
    mem[288] = ('cd', 36)[5]
    require ('cd', 36)[6] <= test266151307()
    require cd[36] + ('cd', 36)[6] + 35 < calldata.size
    if cd[(cd[36] + ('cd', 36)[6] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353 < 352 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353 > test266151307():
        revert with 0, 65
    mem[352] = cd[(cd[36] + ('cd', 36)[6] + 4)]
    require cd[36] + ('cd', 36)[6] + cd[(cd[36] + ('cd', 36)[6] + 4)] + 36 <= calldata.size
    mem[384 len cd[(cd[36] + ('cd', 36)[6] + 4)]] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]]
    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + 384] = 0
    mem[320] = 352
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 354 < 353 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 354 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 353] = ('cd', 100).length
    require (32 * ('cd', 100).length) + cd[100] + 36 <= calldata.size
    s = ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385
    idx = cd[100] + 36
    while idx < (32 * ('cd', 100).length) + cd[100] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 355 < 354 or ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 355 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 354] = ('cd', 132).length
    require (32 * ('cd', 132).length) + cd[132] + 36 <= calldata.size
    s = ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386
    idx = cd[132] + 36
    while idx < (32 * ('cd', 132).length) + cd[132] + 36:
        mem[s] = cd[idx]
        s = s + 32
        idx = idx + 32
        continue 
    require cd[164] == address(cd[164])
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 391] = msg.sender
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 423] = this.address
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 455] = ('cd', 36)[3]
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 355] = 100
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 387 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 487] = 32
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 519] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(('cd', 36).length)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 551 len 128] = 0, msg.sender, address(this.address), ('cd', 36)[3], 0
    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 651] = 0
    call address(('cd', 36).length) with:
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), ('cd', 36)[3], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ('cd', 36).length:
                revert with memory
                  from 128
                   len ('cd', 36).length
            revert with 0, 'SafeERC20: low-level call failed'
        if ('cd', 36).length:
            require ('cd', 36).length >= 32
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            if not ('cd', 36)[0]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ('cd', 36)[3]:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 587] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 619] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 551] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 583 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 651] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 683] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 715 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 783] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1135 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 1103] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1135 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1135 len ceil32(('cd', 68).length) - ('cd', 68).length]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 747] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 747])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 747]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1136 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            idx = 0
            s = 0
            while idx < ('cd', 132).length:
                if idx >= ('cd', 132).length:
                    revert with 0, 50
                if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                continue 
            require ext_code.size(sub_8355fc54Address)
            call sub_8355fc54Address.0x8144eeba with:
               value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                 gas gas_remaining wei
                args Array(len=('cd', 100).length, data=mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length], ('cd', 132).length, mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]), (32 * ('cd', 100).length) + 128, address(cd[164])
        else:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 555] = this.address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 587] = sub_3401e168Address
            require ext_code.size(address(('cd', 36).length))
            staticcall address(('cd', 36).length).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 551] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 587] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 619] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 551] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 583 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 651] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 683] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 715 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 783] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 751] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 815] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 847] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 879] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 911] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 943] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 975] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1007] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1039] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1071] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1103 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 783] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1103] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1135 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1103] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 783] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1103] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1135 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1135] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1135 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1135 len ceil32(('cd', 68).length) - ('cd', 68).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 715 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 719] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 815] = ('cd', 100).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 847 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 751] = (32 * ('cd', 100).length) + 128
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 847] = ('cd', 132).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 879 len 32 * ('cd', 132).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 783] = address(cd[164])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 719 len ceil32(return_data.size) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 747 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 747] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 747])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 747]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 752] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 816] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 848] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 880] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 912] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 944] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 976] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1008] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1040] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1072] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 784] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 784] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1136 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 716 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 720] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 816] = ('cd', 100).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 848 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 752] = (32 * ('cd', 100).length) + 128
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 848] = ('cd', 132).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * ('cd', 100).length) + 880 len 32 * ('cd', 132).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 784] = address(cd[164])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 720 len ceil32(return_data.size) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160]
    else:
        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 551] = return_data.size
        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 583 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 583] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 583])
            if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 583]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if not ('cd', 36)[3]:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 588] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 620] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 552] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 584 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 652] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 684] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 716 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 784] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1136 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args Array(len=('cd', 100).length, data=mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length], ('cd', 132).length, mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]), (32 * ('cd', 100).length) + 128, address(cd[164])
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 
                                'SafeERC20: low-level call failed',
                                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 817 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 748] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 748])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 748]:
                        revert with 0, 
                                    'SafeERC20: ERC20 operation did not succeed',
                                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 849 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 753] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 817] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 849] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 881] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 913] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 945] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 977] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1009] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1041] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1073] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1105 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 785] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1105] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1137 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1137] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 1137 len (2 * ceil32(return_data.size)) + ceil32(('cd', 68).length) - (2 * ceil32(return_data.size))]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1105] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 785] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1105] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1137 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 1137] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1137 len (2 * ceil32(return_data.size)) + ceil32(('cd', 68).length) - (2 * ceil32(return_data.size)) - cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 717 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 817] = ('cd', 100).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 849 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 753] = (32 * ('cd', 100).length) + 128
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 849] = ('cd', 132).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 881 len 32 * ('cd', 132).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 785] = address(cd[164])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721 len (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (-2 * ceil32(return_data.size)) + 160]
        else:
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 556] = this.address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 588] = sub_3401e168Address
            require ext_code.size(address(('cd', 36).length))
            staticcall address(('cd', 36).length).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 552] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 588] = sub_3401e168Address
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 620] = ('cd', 36)[3]
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 552] = 68
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 584 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 652] = 32
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 684] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(('cd', 36).length)):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 716 len 96] = 0, sub_3401e168Address, ('cd', 36)[3], 0
            mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 784] = 0
            call address(('cd', 36).length) with:
               funct Mask(32, 224, 0, sub_3401e168Address, ('cd', 36)[3], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, sub_3401e168Address, ('cd', 36)[3], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ('cd', 36).length:
                        revert with memory
                          from 128
                           len ('cd', 36).length
                    revert with 0, 'SafeERC20: low-level call failed'
                if ('cd', 36).length:
                    require ('cd', 36).length >= 32
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    if not ('cd', 36)[0]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 752] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 816] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 848] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 880] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 912] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 944] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 976] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1008] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1040] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1072] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) <= cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 784] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                else:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = 0
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 784] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1104] = ('cd', 68).length
                    mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                    mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 1136] = 0
                    require ext_code.size(sub_3401e168Address)
                    call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                         gas gas_remaining wei
                        args address(cd[4]), 96, ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384, address(('cd', 36).length), address(('cd', 36)[0]), address(('cd', 36)[1]), address(('cd', 36)[2]), ('cd', 36)[3], ('cd', 36)[4], ('cd', 36)[5], 256, cd[(cd[36] + ('cd', 36)[6] + 4)], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]), -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 256, call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256) << (8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) - 256, Mask(8 * -ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 32, 0, 0), mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + cd[(cd[36] + ('cd', 36)[6] + 4)] + 1136 len -cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])], call.data[cd[68] + 36 len ('cd', 68).length], mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ('cd', 68).length + 1136 len ceil32(('cd', 68).length) - ('cd', 68).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 716 len 64] = ext_call.return_data[0 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 720] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 816] = ('cd', 100).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 848 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 752] = (32 * ('cd', 100).length) + 128
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 848] = ('cd', 132).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 880 len 32 * ('cd', 132).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 784] = address(cd[164])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 720 len ceil32(return_data.size) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160]
            else:
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 716] = return_data.size
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 748 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 717] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721] = 32
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 753] = 32
                    mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 785] = 'SafeERC20: low-level call failed'
                    revert with memory
                      from ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 717
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 748] == bool(mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 748])
                    if not mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + ceil32(return_data.size) + 748]:
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 717] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721] = 32
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 753] = 42
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 785] = 'SafeERC20: ERC20 operation did n'
                        mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 817] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 717
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721] = address(cd[4])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 753] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 817] = address(('cd', 36).length)
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 849] = address(('cd', 36)[0])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 881] = address(('cd', 36)[1])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 913] = address(('cd', 36)[2])
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 945] = ('cd', 36)[3]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 977] = ('cd', 36)[4]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1009] = ('cd', 36)[5]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1041] = 256
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1073] = cd[(cd[36] + ('cd', 36)[6] + 4)]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1105 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])] = call.data[cd[36] + ('cd', 36)[6] + 36 len cd[(cd[36] + ('cd', 36)[6] + 4)]], Mask(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) - cd[(cd[36] + ('cd', 36)[6] + 4)], -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256, ('cd', 100).length) >> -(8 * ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + -ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 31) + 256
                if ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) > cd[(cd[36] + ('cd', 36)[6] + 4)]:
                    mem[cd[(cd[36] + ('cd', 36)[6] + 4)] + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1105] = 0
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 785] = ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + 384
                mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1105] = ('cd', 68).length
                mem[ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1137 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
                mem[('cd', 68).length + ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 1137] = 0
                require ext_code.size(sub_3401e168Address)
                call sub_3401e168Address.swap(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, uint256 arg7, uint256 arg8, bytes arg9, bytes arg10) with:
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721 len ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)]) + (4 * ceil32(return_data.size)) + ceil32(('cd', 68).length) + (-2 * ceil32(return_data.size)) + 416]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                idx = 0
                s = 0
                while idx < ('cd', 132).length:
                    if idx >= ('cd', 132).length:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386]
                    continue 
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721] = 96
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 817] = ('cd', 100).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 849 len 32 * ('cd', 100).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + 385 len 32 * ('cd', 100).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 753] = (32 * ('cd', 100).length) + 128
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 849] = ('cd', 132).length
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + 881 len 32 * ('cd', 132).length] = mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + 386 len 32 * ('cd', 132).length]
                mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 785] = address(cd[164])
                require ext_code.size(sub_8355fc54Address)
                call sub_8355fc54Address.0x8144eeba with:
                   value s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(cd[(cd[36] + ('cd', 36)[6] + 4)])) + ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (4 * ceil32(return_data.size)) + 721 len (3 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (-2 * ceil32(return_data.size)) + 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0] < s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length:
        revert with 0, 17
    call msg.sender with:
       value ext_call.return_data[0] - (s * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length * ('cd', 132).length) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
