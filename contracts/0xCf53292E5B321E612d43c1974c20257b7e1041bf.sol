contract main {




// =====================  Runtime code  =====================


#
#  - sub_3dcc3163(?)
#
address owner;
mapping of struct sub_d533b8ca;
mapping of address sub_3d1c94cc;
mapping of uint256 sub_4f0fb5c5;
array of address sub_95a1ae30;
mapping of address sub_cfad3d84;
mapping of uint256 sub_73188cdd;
mapping of uint256 sub_59d339b4;
mapping of uint256 sub_34176a6d;
mapping of uint256 sub_4706939a;
mapping of struct sub_d13039c7;
address stor11;
address exchangeAddress;
address sub_c7011a56Address;
address weth_address;

function weth_address() payable {
    return weth_address
}

function sub_34176a6d(?) payable {
    require calldata.size - 4 >= 64
    return sub_34176a6d[arg1][arg2]
}

function sub_3d1c94cc(?) payable {
    require calldata.size - 4 >= 32
    return sub_3d1c94cc[arg1]
}

function sub_4706939a(?) payable {
    require calldata.size - 4 >= 64
    return sub_4706939a[address(arg1)][arg2]
}

function sub_4f0fb5c5(?) payable {
    require calldata.size - 4 >= 64
    return sub_4f0fb5c5[arg1][arg2]
}

function sub_59d339b4(?) payable {
    require calldata.size - 4 >= 32
    return sub_59d339b4[arg1]
}

function sub_73188cdd(?) payable {
    require calldata.size - 4 >= 32
    return sub_73188cdd[arg1]
}

function sub_872af374(?) payable {
    require calldata.size - 4 >= 64
    return sub_4f0fb5c5[arg1 << 240][arg2]
}

function owner() payable {
    return owner
}

function sub_8e1615ac(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_d533b8ca[arg1].field_1024)
}

function sub_95a1ae30(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_95a1ae30[arg1])
    return address(sub_95a1ae30[arg1][arg2])
}

function sub_9e060bb5(?) payable {
    require calldata.size - 4 >= 64
    return sub_34176a6d[address(arg1)][arg2]
}

function sub_c5eac440(?) payable {
    require calldata.size - 4 >= 64
    return sub_4706939a[arg1][arg2]
}

function sub_c7011a56(?) payable {
    return sub_c7011a56Address
}

function sub_cfad3d84(?) payable {
    require calldata.size - 4 >= 32
    return sub_cfad3d84[arg1]
}

function sub_d13039c7(?) payable {
    require calldata.size - 4 >= 32
    return bool(sub_d13039c7[arg1].field_0), 
           sub_d13039c7[arg1].field_256,
           sub_d13039c7[arg1].field_512,
           sub_d13039c7[arg1].field_768
}

function exchange() payable {
    return exchangeAddress
}

function sub_d533b8ca(?) payable {
    require calldata.size - 4 >= 32
    return sub_d533b8ca[arg1].field_0, 
           sub_d533b8ca[arg1].field_256,
           sub_d533b8ca[arg1].field_512,
           sub_d533b8ca[arg1].field_768,
           bool(sub_d533b8ca[arg1].field_1024)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b2b2fe74(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not sub_3d1c94cc[arg1 << 240]:
        revert with 0, 'Market unlisted'
    sub_73188cdd[arg1 << 240] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_635cb2da(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_3d1c94cc[arg1 << 240]:
        revert with 0, 'Market already listed'
    sub_3d1c94cc[arg1 << 240] = arg2
    sub_cfad3d84[arg1 << 240] = arg3
    sub_73188cdd[arg1 << 240] = arg4
    require ext_code.size(arg3)
    staticcall arg3.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_59d339b4[arg1 << 240] = 100 * 10^uint8(ext_call.return_data[0])
}

function sub_c2b14794(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= arg2 + (168 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x2e534554544c454d454e545f425245414b5f48415443482068617665206e6f7420706173736564,
                    mem[203 len 25]
    if sub_4f0fb5c5[arg1 << 240][arg2]:
        revert with 0, 'Settlement price already set'
    if not arg3:
        revert with 0, 'Invalid settlement price.'
    sub_4f0fb5c5[arg1 << 240][arg2] = arg3
    emit 0xa743b81c: arg1 << 240, arg2, arg3
}

function sub_3a168c82(?) payable {
    require calldata.size - 4 >= 32
    if sub_d533b8ca[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x64506f736974696f6e2068617320616c7265616479206265656e20696e7374616e746961746564,
                    mem[203 len 25]
    if sub_d533b8ca[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e4f6e6c79207468652062757965722063616e2063616e63656c20612070656e64696e6720627579206f72646572,
                    mem[210 len 18]
    sub_d533b8ca[arg1].field_512 = 0
    emit 0xbde6a725: arg1
}

function sub_7be1bf18(?) payable {
    require calldata.size - 4 >= 32
    if sub_d533b8ca[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x64506f736974696f6e2068617320616c7265616479206265656e20696e7374616e746961746564,
                    mem[203 len 25]
    if sub_d533b8ca[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x2e4f6e6c79207468652073656c6c65722063616e2063616e63656c20612070656e64696e672073656c6c206f72646572,
                    mem[212 len 16]
    sub_d533b8ca[arg1].field_768 = 0
    emit 0xd657bf68: arg1
}

function sub_12b33811(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp <= arg2 + (2 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e534554544c454d454e545f4255464645525f5345434f4e44532068617665206e6f7420706173736564,
                    mem[206 len 22]
    if sub_4f0fb5c5[arg1 << 240][arg2]:
        revert with 0, 'Settlement price already set'
    require ext_code.size(sub_3d1c94cc[arg1 << 240])
    call sub_3d1c94cc[arg1 << 240].0x25e853bd with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid settlement price.'
    sub_4f0fb5c5[arg1 << 240][arg2] = ext_call.return_data[0]
    emit 0xa743b81c: arg1 << 240, arg2, ext_call.return_data[0]
}

function sub_27a00db8(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 36).length != 2:
        if ('cd', 36).length != 3:
            revert with 0, 'Invalid path length.'
    require ('cd', 36).length
    if address(('cd', 36)[0]) != sub_cfad3d84[cd[4] << 240]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e506174682073686f756c64207374617274207769746820756e6465726c79696e672061646472657373,
                    mem[206 len 22]
    require ('cd', 36).length - 1 < ('cd', 36).length
    if address(cd[((32 * ('cd', 36).length - 1) + cd[36] + 36)]) != sub_c7011a56Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e506174682073686f756c64207374617274207769746820756e6465726c79696e672061646472657373,
                    mem[206 len 22]
    if ('cd', 36).length == 3:
        require 1 < ('cd', 36).length
        if address(('cd', 36)[1]) != weth_address:
            revert with 0, 'Intermediate must be WETH.'
    uint256(sub_95a1ae30[stor5[cd[4] << 240]]) = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while uint256(sub_95a1ae30[stor5[cd[4] << 240]]) > idx:
            uint256(sub_95a1ae30[stor5[cd[4] << 240]][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            address(sub_95a1ae30[stor5[cd[4] << 240]][s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while uint256(sub_95a1ae30[stor5[cd[4] << 240]]) > idx:
            uint256(sub_95a1ae30[stor5[cd[4] << 240]][idx]) = 0
            idx = idx + 1
            continue 
}

function sub_cc875432(?) payable {
    require calldata.size - 4 >= 288
    mem[356] = arg7
    require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
    delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0x111940f3 with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), address(arg3), arg8, arg6, arg5, arg9, arg4 << 240, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d533b8ca[delegate.return_data[0]].field_1024:
        revert with 0, 'Order is closed.'
    if not sub_d533b8ca[delegate.return_data[0]].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e43616e6e6f742065787069726520627579206f72646572206e6f74207369676e6564206279206275796572,
                    address(arg8)
    if sub_d533b8ca[delegate.return_data[0]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e43616e6e6f742065787069726520627579206f72646572207369676e65642062792073656c6c6572,
                    Mask(184, 0, arg8)
    if block.timestamp <= sub_d533b8ca[delegate.return_data[0]].field_512:
        if block.timestamp <= arg6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x774e65697468657220746865206f7264657220657870697279206e6f7220746865206f7074696f6e20657870697279206861766520706173736564,
                        arg8 % 1099511627776
    if not ext_code.size(sub_c7011a56Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg9) >> 32
    call sub_c7011a56Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg9) << 224, uint16(arg4) << 16
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg9
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 
                        32,
                        42,
                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        Mask(144, 0, arg7),
                        mem[388 len 4]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    sub_d533b8ca[delegate.return_data[0]].field_1024 = 1
    emit 0xfc1e6e26: delegate.return_data[0]
}

function sub_67821717(?) payable {
    require calldata.size - 4 >= 288
    if arg4 <= block.timestamp:
        revert with 0, 'Option has already expired'
    if arg3 > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 0, 'Amount too high'
    if arg9 < block.timestamp:
        revert with 0, 'Invalid order expiry'
    if msg.sender == arg2:
        revert with 0, 'Self trades not allowed'
    if not arg5:
        revert with 0, 'Invalid strike'
    if not sub_cfad3d84[arg7 << 240]:
        revert with 0, 'Unlisted market'
    require sub_73188cdd[arg7 << 240]
    if arg3 % sub_73188cdd[arg7 << 240]:
        revert with 0, 'Invalid contract size.'
    require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
    delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0x111940f3 with:
         gas gas_remaining wei
        args 0, arg1, msg.sender, address(arg2), arg3, arg4, arg5, arg6, arg7 << 240, arg8
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d533b8ca[delegate.return_data[0]].field_0:
        revert with 0, 'Buyer has already signed.'
    if sub_d533b8ca[delegate.return_data[0]].field_1024:
        revert with 0, 'Order has been closed.'
    if sub_d533b8ca[delegate.return_data[0]].field_256 != arg2:
        sub_d533b8ca[delegate.return_data[0]].field_512 = arg9
        if not ext_code.size(sub_c7011a56Address):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg6) >> 32
        mem[416 len 4] = 0
        call sub_c7011a56Address with:
           funct uint32(arg6)
             gas gas_remaining wei
            args Mask(224, 32, arg6) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg6
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        emit 0xd9453b94: delegate.return_data[0], arg1, address(arg2), arg7 << 240, arg5, arg4, arg8, arg3, arg6, arg9
    else:
        if block.timestamp > sub_d533b8ca[delegate.return_data[0]].field_768:
            revert with 0, 'Sell order has expired.'
        if not ext_code.size(sub_c7011a56Address):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(arg2), Mask(224, 32, arg6) >> 32
        mem[416 len 4] = 0
        call sub_c7011a56Address with:
           funct uint32(arg6)
             gas gas_remaining wei
            args Mask(224, 32, arg6) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(arg2), arg6
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
            delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0xee3bf355 with:
                 gas gas_remaining wei
                args arg8, arg4, arg5, arg7
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 > sub_4706939a[address(arg2)][delegate.return_data[0]]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_4706939a[address(arg2)][delegate.return_data[0]] -= arg3
            if not sub_cfad3d84[arg7 << 240]:
                revert with 0, 'Unrecognized market.'
            require arg4 > block.timestamp
            if sub_d13039c7[delegate.return_data[0]].field_768:
                if sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < 0:
                    if -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < arg3:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]
                        else:
                            if not -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, uint8(arg7) << 240
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / sub_59d339b4[arg7 << 240]
                    else:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if not arg3:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if arg5 * arg3 / arg3 != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, uint8(arg7) << 240
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg5 * arg3 / sub_59d339b4[arg7 << 240]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg3 < 0:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                else:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                        if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                sub_34176a6d[address(msg.sender)][delegate.return_data[0]] += arg3
                if arg3 < 0:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        revert with 0, '.SignedSafeMath: subtraction overflo'
                else:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 > sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, '.SignedSafeMath: subtraction overflo'
                        if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                            revert with 0, '.SignedSafeMath: subtraction overflo'
            else:
                sub_d13039c7[delegate.return_data[0]].field_0 = uint8(arg8)
                sub_d13039c7[delegate.return_data[0]].field_256 = arg4
                sub_d13039c7[delegate.return_data[0]].field_512 = arg5
                sub_d13039c7[delegate.return_data[0]].field_768 = sub_cfad3d84[arg7 << 240]
                if sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < 0:
                    if -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < arg3:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]
                        else:
                            if not -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / sub_59d339b4[arg7 << 240]
                    else:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if not arg3:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if arg5 * arg3 / arg3 != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg5 * arg3 / sub_59d339b4[arg7 << 240]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg3 < 0:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[521 len 31]
                else:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[521 len 31]
                        if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, mem[521 len 31]
                sub_34176a6d[address(msg.sender)][delegate.return_data[0]] += arg3
                if arg3 < 0:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        revert with 0, 32, 36, 0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[524 len 28]
                else:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 > sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 32, 36, 0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[524 len 28]
                        if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                            revert with 0, 32, 36, 0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f, mem[524 len 28]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
            require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
            delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0xee3bf355 with:
                 gas gas_remaining wei
                args arg8, arg4, arg5, arg7
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg3 > sub_4706939a[address(arg2)][delegate.return_data[0]]:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_4706939a[address(arg2)][delegate.return_data[0]] -= arg3
            if not sub_cfad3d84[arg7 << 240]:
                revert with 0, 'Unrecognized market.'
            require arg4 > block.timestamp
            if sub_d13039c7[delegate.return_data[0]].field_768:
                if sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < 0:
                    if -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < arg3:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]
                        else:
                            if not -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, uint8(arg7) << 240
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / sub_59d339b4[arg7 << 240]
                    else:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if not arg3:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if arg5 * arg3 / arg3 != arg5:
                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, uint8(arg7) << 240
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg5 * arg3 / sub_59d339b4[arg7 << 240]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg3 < 0:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                else:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                        if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                            revert with 0, 32, 33, 0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f, uint8(arg7) << 240
                sub_34176a6d[address(msg.sender)][delegate.return_data[0]] += arg3
                if arg3 < 0:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        revert with 0, '.SignedSafeMath: subtraction overflo'
                else:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 > sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, '.SignedSafeMath: subtraction overflo'
                        if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                            revert with 0, '.SignedSafeMath: subtraction overflo'
            else:
                sub_d13039c7[delegate.return_data[0]].field_0 = uint8(arg8)
                sub_d13039c7[delegate.return_data[0]].field_256 = arg4
                sub_d13039c7[delegate.return_data[0]].field_512 = arg5
                sub_d13039c7[delegate.return_data[0]].field_768 = sub_cfad3d84[arg7 << 240]
                if sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < 0:
                    if -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < arg3:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]
                        else:
                            if not -sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / -sub_34176a6d[address(msg.sender)][delegate.return_data[0]] != arg5:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, -1 * arg5 * sub_34176a6d[address(msg.sender)][delegate.return_data[0]] / sub_59d339b4[arg7 << 240]
                    else:
                        if arg8:
                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, arg3
                        else:
                            if not arg3:
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, 0 / sub_59d339b4[arg7 << 240]
                            else:
                                if arg5 * arg3 / arg3 != arg5:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if sub_59d339b4[arg7 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg7 << 240]
                                require ext_code.size(sub_c7011a56Address)
                                call sub_c7011a56Address.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, arg5 * arg3 / sub_59d339b4[arg7 << 240]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                if arg3 < 0:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 522 len 31]
                else:
                    if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] < sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                        if arg3 + sub_34176a6d[address(msg.sender)][delegate.return_data[0]] >= sub_34176a6d[address(msg.sender)][delegate.return_data[0]]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x2e5369676e6564536166654d6174683a206164646974696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 522 len 31]
                sub_34176a6d[address(msg.sender)][delegate.return_data[0]] += arg3
                if arg3 < 0:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        revert with 0, 
                                    32,
                                    36,
                                    0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 525 len 28]
                else:
                    if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 > sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                        if arg3 >= 0:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 525 len 28]
                        if sub_34176a6d[address(arg2)][delegate.return_data[0]] - arg3 <= sub_34176a6d[address(arg2)][delegate.return_data[0]]:
                            revert with 0, 
                                        32,
                                        36,
                                        0x2e5369676e6564536166654d6174683a207375627472616374696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 525 len 28]
        sub_34176a6d[address(arg2)][delegate.return_data[0]] -= arg3
        emit 0x94ec273c: delegate.return_data[0], msg.sender, address(arg2), delegate.return_data[0], arg7 << 240, arg5, arg4, arg8, arg3, arg6
    sub_d533b8ca[delegate.return_data[0]].field_0 = msg.sender or Mask(96, 160, sub_d533b8ca[delegate.return_data[0]].field_0)
}

function sub_e7810c71(?) payable {
    require calldata.size - 4 >= 288
    mem[356] = arg7
    require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
    delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0x111940f3 with:
         gas gas_remaining wei
        args 0, arg1, address(arg2), address(arg3), arg8, arg6, arg5, arg9, arg4 << 240, arg7
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d533b8ca[delegate.return_data[0]].field_1024:
        revert with 0, 'Order is closed.'
    if not sub_d533b8ca[delegate.return_data[0]].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x7343616e6e6f74206578706972652073656c6c206f72646572206e6f74207369676e65642062792073656c6c6572,
                    Mask(144, 0, arg8)
    if sub_d533b8ca[delegate.return_data[0]].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7743616e6e6f74206578706972652073656c6c206f72646572207369676e6564206279206275796572,
                    Mask(184, 0, arg8)
    if block.timestamp > sub_d533b8ca[delegate.return_data[0]].field_768:
        require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
        delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0xee3bf355 with:
             gas gas_remaining wei
            args 0, uint32(arg7), arg6, arg5, arg4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_34176a6d[address(arg3)][delegate.return_data[0]] <= 0:
            if arg8:
                if arg7:
                    require ext_code.size(sub_cfad3d84[arg4 << 240])
                    call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if not arg8:
                        if sub_59d339b4[arg4 << 240] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_59d339b4[arg4 << 240]
                        if not ext_code.size(sub_c7011a56Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                        call sub_c7011a56Address with:
                           funct uint32(arg5)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            Mask(144, 0, arg7),
                                            mem[388 len 4]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if arg5 * arg8 / arg8 != arg5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        uint8(arg4) << 240
                        if sub_59d339b4[arg4 << 240] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_59d339b4[arg4 << 240]
                        if not ext_code.size(sub_c7011a56Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) >> 32
                        call sub_c7011a56Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg5 * arg8 / sub_59d339b4[arg4 << 240]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            Mask(144, 0, arg7),
                                            mem[388 len 4]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if sub_4706939a[address(arg3)][delegate.return_data[0]] > sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                if sub_34176a6d[address(arg3)][delegate.return_data[0]] > sub_4706939a[address(arg3)][delegate.return_data[0]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]] >= arg8:
                    if arg8:
                        if arg7:
                            require ext_code.size(sub_cfad3d84[arg4 << 240])
                            call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg3), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if not arg8:
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                if arg5 * arg8 / arg8 != arg5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                uint8(arg4) << 240
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                   funct uint32(arg5)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg5 * arg8 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                        if arg7:
                            require ext_code.size(sub_cfad3d84[arg4 << 240])
                            call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg3), sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if not sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                if (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]] != arg5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                uint8(arg4) << 240
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                   funct uint32(arg5)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg3) << 64,
                                                    0,
                                                    (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
    else:
        if block.timestamp <= arg6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        59,
                        0x774e65697468657220746865206f7264657220657870697279206e6f7220746865206f7074696f6e20657870697279206861766520706173736564,
                        arg8 % 1099511627776
        require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
        delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0xee3bf355 with:
             gas gas_remaining wei
            args 0, uint32(arg7), arg6, arg5, arg4
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_34176a6d[address(arg3)][delegate.return_data[0]] <= 0:
            if arg8:
                if arg7:
                    require ext_code.size(sub_cfad3d84[arg4 << 240])
                    call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg3), arg8
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                else:
                    if not arg8:
                        if sub_59d339b4[arg4 << 240] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_59d339b4[arg4 << 240]
                        if not ext_code.size(sub_c7011a56Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                        call sub_c7011a56Address with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            Mask(144, 0, arg7),
                                            mem[388 len 4]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
                    else:
                        if arg5 * arg8 / arg8 != arg5:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        uint8(arg4) << 240
                        if sub_59d339b4[arg4 << 240] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_59d339b4[arg4 << 240]
                        if not ext_code.size(sub_c7011a56Address):
                            revert with 0, 'Address: call to non-contract'
                        mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) >> 32
                        call sub_c7011a56Address with:
                           funct uint32(arg5)
                             gas gas_remaining wei
                            args Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg5 * arg8 / sub_59d339b4[arg4 << 240]
                            if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            Mask(144, 0, arg7),
                                            mem[388 len 4]
                        else:
                            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[292]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 371 len 22]
        else:
            if sub_4706939a[address(arg3)][delegate.return_data[0]] > sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                if sub_34176a6d[address(arg3)][delegate.return_data[0]] > sub_4706939a[address(arg3)][delegate.return_data[0]]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]] >= arg8:
                    if arg8:
                        if arg7:
                            require ext_code.size(sub_cfad3d84[arg4 << 240])
                            call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg3), arg8
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if not arg8:
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                   funct uint32(arg5)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                if arg5 * arg8 / arg8 != arg5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                uint8(arg4) << 240
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                   funct uint32(arg5)
                                     gas gas_remaining wei
                                    args Mask(224, 32, arg5 * arg8 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg5 * arg8 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                else:
                    if sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                        if arg7:
                            require ext_code.size(sub_cfad3d84[arg4 << 240])
                            call sub_cfad3d84[arg4 << 240].0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg3), sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                        else:
                            if not sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]]:
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                   funct uint32(arg5)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, 0 / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
                            else:
                                if (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_4706939a[address(arg3)][delegate.return_data[0]] - sub_34176a6d[address(arg3)][delegate.return_data[0]] != arg5:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                uint8(arg4) << 240
                                if sub_59d339b4[arg4 << 240] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require sub_59d339b4[arg4 << 240]
                                if not ext_code.size(sub_c7011a56Address):
                                    revert with 0, 'Address: call to non-contract'
                                mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]) >> 32
                                call sub_c7011a56Address with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]) << 224, uint16(arg4) << 16
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0xa9059cbb(?????), 
                                                    address(arg3) << 64,
                                                    0,
                                                    (sub_4706939a[address(arg3)][delegate.return_data[0]] * arg5) - (sub_34176a6d[address(arg3)][delegate.return_data[0]] * arg5) / sub_59d339b4[arg4 << 240]
                                    if not unknown_0xa9059cbb(?????), address(arg3) << 64:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    Mask(144, 0, arg7),
                                                    mem[388 len 4]
                                else:
                                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[292]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 371 len 22]
    if arg8 > sub_4706939a[address(arg3)][delegate.return_data[0]]:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_4706939a[address(arg3)][delegate.return_data[0]] -= arg8
    sub_d533b8ca[delegate.return_data[0]].field_1024 = 1
    emit 0x23e789b0: delegate.return_data[0]
}

function sub_062f37b0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require block.timestamp > cd[36] + (2 * 3600)
    mem[100] = bool(cd[4])
    mem[132] = cd[36]
    mem[164] = cd[68]
    mem[196] = uint16(cd[100])
    require ext_code.size(0xad011fb951258db808d5b9af6e9e7e4b65d1a58e)
    delegate 0xad011fb951258db808d5b9af6e9e7e4b65d1a58e.0xee3bf355 with:
         gas gas_remaining wei
        args 0, uint32(bool(cd[4])), cd[36], cd[68], uint16(cd[100])
    mem[96] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[0] = cd[36]
    mem[32] = sha3(cd[100] << 240, 3)
    if not sub_4f0fb5c5[cd[100] << 240][cd[36]]:
        revert with 0, 'Invalid settlement price.'
    if not cd[4]:
        if sub_4f0fb5c5[cd[100] << 240][cd[36]] < cd[68]:
            idx = 0
            while idx < ('cd', 132).length:
                mem[0] = delegate.return_data[0]
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 8)
                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != 0:
                    require idx < ('cd', 132).length
                    mem[0] = delegate.return_data[0]
                    mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 9)
                    if 0 == sub_4706939a[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                        require idx < ('cd', 132).length
                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                            revert with 0, 'Invalid settlement price.'
                        if not sub_d13039c7[delegate.return_data[0]].field_768:
                            revert with 0, 'Unrecognized market.'
                        if not sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                            require idx < ('cd', 132).length
                            mem[0] = cd[36]
                            mem[32] = sha3(cd[100] << 240, 3)
                            mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[mem[64] + 32] = delegate.return_data[0]
                            mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                            mem[mem[64] + 96] = 0
                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                        else:
                            if not cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] < 0:
                                    if sub_d13039c7[delegate.return_data[0]].field_0:
                                        require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                        call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]
                                    else:
                                        if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                        else:
                                            if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                require idx < ('cd', 132).length
                                mem[0] = cd[36]
                                mem[32] = sha3(cd[100] << 240, 3)
                                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[mem[64] + 32] = delegate.return_data[0]
                                mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                mem[mem[64] + 96] = 0
                                emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                            else:
                                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] <= 0:
                                    if sub_d13039c7[delegate.return_data[0]].field_0:
                                        if not cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]] > -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] - (0 / sub_4f0fb5c5[cd[100] << 240][cd[36]])
                                        else:
                                            if (-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]] != -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if (-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] > -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] - ((-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]])
                                    else:
                                        if not cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if 0 / sub_59d339b4[cd[100] << 240] > 0 / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), 0
                                            else:
                                                if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if 0 / sub_59d339b4[cd[100] << 240] > -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (-1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]) - (0 / sub_59d339b4[cd[100] << 240])
                                        else:
                                            if (-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]] != -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if (-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240] > 0 / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (0 / sub_59d339b4[cd[100] << 240]) - ((-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240])
                                            else:
                                                if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if (-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240] > -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (-1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]) - ((-1 * cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                    require idx < ('cd', 132).length
                                    mem[0] = cd[36]
                                    mem[32] = sha3(cd[100] << 240, 3)
                                    mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 32] = delegate.return_data[0]
                                    mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                    mem[mem[64] + 96] = 0
                                    emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                                else:
                                    mem[0] = delegate.return_data[0]
                                    mem[32] = 10
                                    if not sub_d13039c7[delegate.return_data[0]].field_0:
                                        if not cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                        else:
                                            if (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]] != sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                        require idx < ('cd', 132).length
                                        mem[0] = cd[36]
                                        mem[32] = sha3(cd[100] << 240, 3)
                                        mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 32] = delegate.return_data[0]
                                        mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                        mem[mem[64] + 96] = 0
                                        emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                                    else:
                                        if cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                            if (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / cd[68] - sub_4f0fb5c5[cd[100] << 240][cd[36]] != sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if not (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                                _1764 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1765 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1765 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1765 + 36 len 28]
                                                mem[64] = _1764 + 164
                                                mem[_1764 + 100] = 32
                                                mem[_1764 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1910 = mem[_1765]
                                                t = _1765 + 32
                                                u = _1764 + 164
                                                s = mem[_1765]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1764 + floor32(mem[_1765]) + 164] = mem[_1765 + -(mem[_1765] % 32) + floor32(mem[_1765]) + 64 len mem[_1765] % 32] or Mask(8 * -(mem[_1765] % 32) + 32, -(8 * -(mem[_1765] % 32) + 32) + 256, mem[_1764 + floor32(mem[_1765]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1764 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1764 + 168 len _1910 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1764 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + 168] = 32
                                                        mem[_1764 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1764 + 232] = mem[idx + _1764 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1764 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1764 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + 168] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1764 + 200] = 0
                                                        mem[_1764 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1764 + 296] = block.timestamp + 3600
                                                        mem[_1764 + 232] = 160
                                                        mem[_1764 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3321 = mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + 164] = mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3417 = mem[_1764 + _3321 + 164]
                                                            s = 0
                                                            while s < 32 * _3417:
                                                                mem[s + _1764 + ceil32(return_data.size) + 196] = mem[s + _1764 + _3321 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3417) + _1764 + ceil32(return_data.size) + 196
                                                            require mem[_1764 + ceil32(return_data.size) + 164] - 1 < mem[_1764 + ceil32(return_data.size) + 164]
                                                            _3899 = mem[(32 * mem[_1764 + ceil32(return_data.size) + 164] - 1) + _1764 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3417) + _1764 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3417) + _1764 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3417) + _1764 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3417) + _1764 + ceil32(return_data.size) + 292] = _3899
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3899
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1764 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1764 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1764 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1764 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4233 = mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + 164] = mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4329 = mem[_1764 + _4233 + 164]
                                                            s = 0
                                                            while s < 32 * _4329:
                                                                mem[s + _1764 + ceil32(return_data.size) + 196] = mem[s + _1764 + _4233 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4329) + _1764 + ceil32(return_data.size) + 196
                                                            require mem[_1764 + ceil32(return_data.size) + 164] - 1 < mem[_1764 + ceil32(return_data.size) + 164]
                                                            _4777 = mem[(32 * mem[_1764 + ceil32(return_data.size) + 164] - 1) + _1764 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4329) + _1764 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4329) + _1764 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4329) + _1764 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4329) + _1764 + ceil32(return_data.size) + 292] = _4777
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4777
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1764 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1764 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + 168] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1764 + 200] = 0
                                                        mem[_1764 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1764 + 296] = block.timestamp + 3600
                                                        mem[_1764 + 232] = 160
                                                        mem[_1764 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3370 = mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + 164] = mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3452 = mem[_1764 + _3370 + 164]
                                                            s = 0
                                                            while s < 32 * _3452:
                                                                mem[s + _1764 + ceil32(return_data.size) + 196] = mem[s + _1764 + _3370 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3452) + _1764 + ceil32(return_data.size) + 196
                                                            require mem[_1764 + ceil32(return_data.size) + 164] - 1 < mem[_1764 + ceil32(return_data.size) + 164]
                                                            _3900 = mem[(32 * mem[_1764 + ceil32(return_data.size) + 164] - 1) + _1764 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3452) + _1764 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3452) + _1764 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3452) + _1764 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3452) + _1764 + ceil32(return_data.size) + 292] = _3900
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3900
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1764 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1764 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1764 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1764 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4235 = mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + 164] = mem[_1764 + mem[_1764 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4330 = mem[_1764 + _4235 + 164]
                                                            s = 0
                                                            while s < 32 * _4330:
                                                                mem[s + _1764 + ceil32(return_data.size) + 196] = mem[s + _1764 + _4235 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4330) + _1764 + ceil32(return_data.size) + 196
                                                            require mem[_1764 + ceil32(return_data.size) + 164] - 1 < mem[_1764 + ceil32(return_data.size) + 164]
                                                            _4778 = mem[(32 * mem[_1764 + ceil32(return_data.size) + 164] - 1) + _1764 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4330) + _1764 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4330) + _1764 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4330) + _1764 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4330) + _1764 + ceil32(return_data.size) + 292] = _4778
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4778
                                                else:
                                                    mem[_1764 + 164] = return_data.size
                                                    mem[_1764 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1764 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1764 + ceil32(return_data.size) + 233] = mem[idx + _1764 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1764 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1764 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + ceil32(return_data.size) + 169] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1764 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1764 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1764 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1764 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1764 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3323 = mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3418 = mem[_1764 + ceil32(return_data.size) + _3323 + 165]
                                                            s = 0
                                                            while s < 32 * _3418:
                                                                mem[s + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1764 + ceil32(return_data.size) + _3323 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3418) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3903 = mem[(32 * mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3418) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3418) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3418) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3418) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3903
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3903
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1764 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1764 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1764 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1764 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4237 = mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4331 = mem[_1764 + ceil32(return_data.size) + _4237 + 165]
                                                            s = 0
                                                            while s < 32 * _4331:
                                                                mem[s + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1764 + ceil32(return_data.size) + _4237 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4331) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4779 = mem[(32 * mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4331) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4331) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4331) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4331) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4779
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4779
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1764 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1764 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1764 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1764 + ceil32(return_data.size) + 169] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1764 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1764 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1764 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1764 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1764 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3373 = mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3456 = mem[_1764 + ceil32(return_data.size) + _3373 + 165]
                                                            s = 0
                                                            while s < 32 * _3456:
                                                                mem[s + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1764 + ceil32(return_data.size) + _3373 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3456) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3904 = mem[(32 * mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3456) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3456) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3456) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3456) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3904
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3904
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1764 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1764 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1764 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1764 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1764 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4239 = mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1764 + ceil32(return_data.size) + mem[_1764 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4332 = mem[_1764 + ceil32(return_data.size) + _4239 + 165]
                                                            s = 0
                                                            while s < 32 * _4332:
                                                                mem[s + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1764 + ceil32(return_data.size) + _4239 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4332) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4780 = mem[(32 * mem[_1764 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4332) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4332) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4332) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4332) + _1764 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4780
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4780
                                            else:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                                staticcall sub_d13039c7[delegate.return_data[0]].field_768.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0, 
                                                                32,
                                                                54,
                                                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[mem[64] + 122 len 10]
                                                _1865 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1866 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1866 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1866 + 36 len 28]
                                                mem[64] = _1865 + 164
                                                mem[_1865 + 100] = 32
                                                mem[_1865 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _2002 = mem[_1866]
                                                t = _1866 + 32
                                                u = _1865 + 164
                                                s = mem[_1866]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1865 + floor32(mem[_1866]) + 164] = mem[_1866 + -(mem[_1866] % 32) + floor32(mem[_1866]) + 64 len mem[_1866] % 32] or Mask(8 * -(mem[_1866] % 32) + 32, -(8 * -(mem[_1866] % 32) + 32) + 256, mem[_1865 + floor32(mem[_1866]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1865 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1865 + 168 len _2002 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1865 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + 168] = 32
                                                        mem[_1865 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1865 + 232] = mem[idx + _1865 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1865 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1865 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + 168] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1865 + 200] = 0
                                                        mem[_1865 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1865 + 296] = block.timestamp + 3600
                                                        mem[_1865 + 232] = 160
                                                        mem[_1865 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3325 = mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + 164] = mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3419 = mem[_1865 + _3325 + 164]
                                                            s = 0
                                                            while s < 32 * _3419:
                                                                mem[s + _1865 + ceil32(return_data.size) + 196] = mem[s + _1865 + _3325 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3419) + _1865 + ceil32(return_data.size) + 196
                                                            require mem[_1865 + ceil32(return_data.size) + 164] - 1 < mem[_1865 + ceil32(return_data.size) + 164]
                                                            _3907 = mem[(32 * mem[_1865 + ceil32(return_data.size) + 164] - 1) + _1865 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3419) + _1865 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3419) + _1865 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3419) + _1865 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3419) + _1865 + ceil32(return_data.size) + 292] = _3907
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3907
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1865 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1865 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1865 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1865 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4241 = mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + 164] = mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4333 = mem[_1865 + _4241 + 164]
                                                            s = 0
                                                            while s < 32 * _4333:
                                                                mem[s + _1865 + ceil32(return_data.size) + 196] = mem[s + _1865 + _4241 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4333) + _1865 + ceil32(return_data.size) + 196
                                                            require mem[_1865 + ceil32(return_data.size) + 164] - 1 < mem[_1865 + ceil32(return_data.size) + 164]
                                                            _4781 = mem[(32 * mem[_1865 + ceil32(return_data.size) + 164] - 1) + _1865 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4333) + _1865 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4333) + _1865 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4333) + _1865 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4333) + _1865 + ceil32(return_data.size) + 292] = _4781
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4781
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1865 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1865 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + 168] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1865 + 200] = 0
                                                        mem[_1865 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1865 + 296] = block.timestamp + 3600
                                                        mem[_1865 + 232] = 160
                                                        mem[_1865 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3376 = mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + 164] = mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3460 = mem[_1865 + _3376 + 164]
                                                            s = 0
                                                            while s < 32 * _3460:
                                                                mem[s + _1865 + ceil32(return_data.size) + 196] = mem[s + _1865 + _3376 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3460) + _1865 + ceil32(return_data.size) + 196
                                                            require mem[_1865 + ceil32(return_data.size) + 164] - 1 < mem[_1865 + ceil32(return_data.size) + 164]
                                                            _3908 = mem[(32 * mem[_1865 + ceil32(return_data.size) + 164] - 1) + _1865 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3460) + _1865 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3460) + _1865 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3460) + _1865 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3460) + _1865 + ceil32(return_data.size) + 292] = _3908
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3908
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1865 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1865 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1865 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1865 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4243 = mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + 164] = mem[_1865 + mem[_1865 + 164 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4334 = mem[_1865 + _4243 + 164]
                                                            s = 0
                                                            while s < 32 * _4334:
                                                                mem[s + _1865 + ceil32(return_data.size) + 196] = mem[s + _1865 + _4243 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4334) + _1865 + ceil32(return_data.size) + 196
                                                            require mem[_1865 + ceil32(return_data.size) + 164] - 1 < mem[_1865 + ceil32(return_data.size) + 164]
                                                            _4782 = mem[(32 * mem[_1865 + ceil32(return_data.size) + 164] - 1) + _1865 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4334) + _1865 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4334) + _1865 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4334) + _1865 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4334) + _1865 + ceil32(return_data.size) + 292] = _4782
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4782
                                                else:
                                                    mem[_1865 + 164] = return_data.size
                                                    mem[_1865 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1865 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1865 + ceil32(return_data.size) + 233] = mem[idx + _1865 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1865 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1865 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + ceil32(return_data.size) + 169] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1865 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1865 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1865 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1865 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1865 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3327 = mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3420 = mem[_1865 + ceil32(return_data.size) + _3327 + 165]
                                                            s = 0
                                                            while s < 32 * _3420:
                                                                mem[s + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1865 + ceil32(return_data.size) + _3327 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3420) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3911 = mem[(32 * mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3420) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3420) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3420) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3420) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3911
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3911
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1865 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1865 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1865 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1865 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4245 = mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4335 = mem[_1865 + ceil32(return_data.size) + _4245 + 165]
                                                            s = 0
                                                            while s < 32 * _4335:
                                                                mem[s + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1865 + ceil32(return_data.size) + _4245 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4335) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4783 = mem[(32 * mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4335) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4335) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4335) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4335) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4783
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4783
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1865 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1865 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1865 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1865 + ceil32(return_data.size) + 169] = (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1865 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1865 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1865 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1865 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1865 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3379 = mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3464 = mem[_1865 + ceil32(return_data.size) + _3379 + 165]
                                                            s = 0
                                                            while s < 32 * _3464:
                                                                mem[s + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1865 + ceil32(return_data.size) + _3379 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3464) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3912 = mem[(32 * mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3464) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3464) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3464) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3464) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3912
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3912
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1865 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1865 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1865 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1865 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1865 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4247 = mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1865 + ceil32(return_data.size) + mem[_1865 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4336 = mem[_1865 + ceil32(return_data.size) + _4247 + 165]
                                                            s = 0
                                                            while s < 32 * _4336:
                                                                mem[s + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1865 + ceil32(return_data.size) + _4247 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4336) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4784 = mem[(32 * mem[_1865 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4336) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4336) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4336) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4336) + _1865 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4784
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4784
                                        else:
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if not 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                                _1747 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1748 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1748 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1748 + 36 len 28]
                                                mem[64] = _1747 + 164
                                                mem[_1747 + 100] = 32
                                                mem[_1747 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1871 = mem[_1748]
                                                t = _1748 + 32
                                                u = _1747 + 164
                                                s = mem[_1748]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1747 + floor32(mem[_1748]) + 164] = mem[_1748 + -(mem[_1748] % 32) + floor32(mem[_1748]) + 64 len mem[_1748] % 32] or Mask(8 * -(mem[_1748] % 32) + 32, -(8 * -(mem[_1748] % 32) + 32) + 256, mem[_1747 + floor32(mem[_1748]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1747 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1747 + 168 len _1871 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1747 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + 168] = 32
                                                        mem[_1747 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1747 + 232] = mem[idx + _1747 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1747 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1747 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1747 + 200] = 0
                                                        mem[_1747 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1747 + 296] = block.timestamp + 3600
                                                        mem[_1747 + 232] = 160
                                                        mem[_1747 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3329 = mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + 164] = mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3421 = mem[_1747 + _3329 + 164]
                                                            s = 0
                                                            while s < 32 * _3421:
                                                                mem[s + _1747 + ceil32(return_data.size) + 196] = mem[s + _1747 + _3329 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3421) + _1747 + ceil32(return_data.size) + 196
                                                            require mem[_1747 + ceil32(return_data.size) + 164] - 1 < mem[_1747 + ceil32(return_data.size) + 164]
                                                            _3915 = mem[(32 * mem[_1747 + ceil32(return_data.size) + 164] - 1) + _1747 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3421) + _1747 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3421) + _1747 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3421) + _1747 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3421) + _1747 + ceil32(return_data.size) + 292] = _3915
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3915
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1747 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1747 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1747 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1747 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4249 = mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + 164] = mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4337 = mem[_1747 + _4249 + 164]
                                                            s = 0
                                                            while s < 32 * _4337:
                                                                mem[s + _1747 + ceil32(return_data.size) + 196] = mem[s + _1747 + _4249 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4337) + _1747 + ceil32(return_data.size) + 196
                                                            require mem[_1747 + ceil32(return_data.size) + 164] - 1 < mem[_1747 + ceil32(return_data.size) + 164]
                                                            _4785 = mem[(32 * mem[_1747 + ceil32(return_data.size) + 164] - 1) + _1747 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4337) + _1747 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4337) + _1747 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4337) + _1747 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4337) + _1747 + ceil32(return_data.size) + 292] = _4785
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4785
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1747 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1747 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1747 + 200] = 0
                                                        mem[_1747 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1747 + 296] = block.timestamp + 3600
                                                        mem[_1747 + 232] = 160
                                                        mem[_1747 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3382 = mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + 164] = mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3468 = mem[_1747 + _3382 + 164]
                                                            s = 0
                                                            while s < 32 * _3468:
                                                                mem[s + _1747 + ceil32(return_data.size) + 196] = mem[s + _1747 + _3382 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3468) + _1747 + ceil32(return_data.size) + 196
                                                            require mem[_1747 + ceil32(return_data.size) + 164] - 1 < mem[_1747 + ceil32(return_data.size) + 164]
                                                            _3916 = mem[(32 * mem[_1747 + ceil32(return_data.size) + 164] - 1) + _1747 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3468) + _1747 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3468) + _1747 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3468) + _1747 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3468) + _1747 + ceil32(return_data.size) + 292] = _3916
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3916
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1747 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1747 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1747 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1747 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4251 = mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + 164] = mem[_1747 + mem[_1747 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4338 = mem[_1747 + _4251 + 164]
                                                            s = 0
                                                            while s < 32 * _4338:
                                                                mem[s + _1747 + ceil32(return_data.size) + 196] = mem[s + _1747 + _4251 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4338) + _1747 + ceil32(return_data.size) + 196
                                                            require mem[_1747 + ceil32(return_data.size) + 164] - 1 < mem[_1747 + ceil32(return_data.size) + 164]
                                                            _4786 = mem[(32 * mem[_1747 + ceil32(return_data.size) + 164] - 1) + _1747 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4338) + _1747 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4338) + _1747 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4338) + _1747 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4338) + _1747 + ceil32(return_data.size) + 292] = _4786
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4786
                                                else:
                                                    mem[_1747 + 164] = return_data.size
                                                    mem[_1747 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1747 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1747 + ceil32(return_data.size) + 233] = mem[idx + _1747 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1747 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1747 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1747 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1747 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1747 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1747 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1747 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3331 = mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3422 = mem[_1747 + ceil32(return_data.size) + _3331 + 165]
                                                            s = 0
                                                            while s < 32 * _3422:
                                                                mem[s + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1747 + ceil32(return_data.size) + _3331 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3422) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3919 = mem[(32 * mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3422) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3422) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3422) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3422) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3919
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3919
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1747 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1747 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1747 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1747 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4253 = mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4339 = mem[_1747 + ceil32(return_data.size) + _4253 + 165]
                                                            s = 0
                                                            while s < 32 * _4339:
                                                                mem[s + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1747 + ceil32(return_data.size) + _4253 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4339) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4787 = mem[(32 * mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4339) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4339) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4339) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4339) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4787
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4787
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1747 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1747 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1747 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1747 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1747 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1747 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1747 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1747 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1747 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3385 = mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3472 = mem[_1747 + ceil32(return_data.size) + _3385 + 165]
                                                            s = 0
                                                            while s < 32 * _3472:
                                                                mem[s + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1747 + ceil32(return_data.size) + _3385 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3472) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3920 = mem[(32 * mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3472) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3472) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3472) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3472) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3920
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3920
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1747 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1747 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1747 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1747 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1747 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4255 = mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1747 + ceil32(return_data.size) + mem[_1747 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4340 = mem[_1747 + ceil32(return_data.size) + _4255 + 165]
                                                            s = 0
                                                            while s < 32 * _4340:
                                                                mem[s + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1747 + ceil32(return_data.size) + _4255 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4340) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4788 = mem[(32 * mem[_1747 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4340) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4340) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4340) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4340) + _1747 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4788
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4788
                                            else:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                                staticcall sub_d13039c7[delegate.return_data[0]].field_768.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0, 
                                                                32,
                                                                54,
                                                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[mem[64] + 122 len 10]
                                                _1829 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1830 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1830 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1830 + 36 len 28]
                                                mem[64] = _1829 + 164
                                                mem[_1829 + 100] = 32
                                                mem[_1829 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1988 = mem[_1830]
                                                t = _1830 + 32
                                                u = mem[64]
                                                s = mem[_1830]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[mem[64] + floor32(mem[_1830])] = mem[_1830 + floor32(mem[_1830]) + -(mem[_1830] % 32) + 64 len mem[_1830] % 32] or Mask(8 * -(mem[_1830] % 32) + 32, -(8 * -(mem[_1830] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1830])])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1988 + _1829 + -mem[64] + 160]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        _2993 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = mem[_1829 + 100]
                                                        _2995 = mem[_1829 + 100]
                                                        idx = 0
                                                        while idx < _2995:
                                                            mem[idx + _2993 + 68] = mem[idx + _1829 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        if not _2995 % 32:
                                                            revert with memory
                                                              from mem[64]
                                                               len _2995 + _2993 + -mem[64] + 68
                                                        mem[floor32(_2995) + _2993 + 68] = mem[floor32(_2995) + _2993 + -(_2995 % 32) + 100 len _2995 % 32]
                                                        revert with memory
                                                          from mem[64]
                                                           len floor32(_2995) + _2993 + -mem[64] + 100
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3170 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3291 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3333 = mem[_3291]
                                                            require mem[_3291] <= 4294967296
                                                            require mem[_3291] + 32 <= return_data.size
                                                            require mem[_3291 + mem[_3291]] <= 4294967296 and mem[_3291] + (32 * mem[_3291 + mem[_3291]]) + 32 <= return_data.size
                                                            mem[_3291 + ceil32(return_data.size)] = mem[_3291 + mem[_3291]]
                                                            _3423 = mem[_3291 + _3333]
                                                            s = 0
                                                            while s < 32 * _3423:
                                                                mem[s + _3291 + ceil32(return_data.size) + 32] = mem[s + _3291 + _3333 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3423) + _3291 + ceil32(return_data.size) + 32
                                                            require mem[_3291 + ceil32(return_data.size)] - 1 < mem[_3291 + ceil32(return_data.size)]
                                                            _3923 = mem[(32 * mem[_3291 + ceil32(return_data.size)] - 1) + _3291 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3423) + _3291 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3423) + _3291 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3423) + _3291 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3423) + _3291 + ceil32(return_data.size) + 128] = _3923
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3923
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3170 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4213 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4257 = mem[_4213]
                                                            require mem[_4213] <= 4294967296
                                                            require mem[_4213] + 32 <= return_data.size
                                                            require mem[_4213 + mem[_4213]] <= 4294967296 and mem[_4213] + (32 * mem[_4213 + mem[_4213]]) + 32 <= return_data.size
                                                            mem[_4213 + ceil32(return_data.size)] = mem[_4213 + mem[_4213]]
                                                            _4341 = mem[_4213 + _4257]
                                                            s = 0
                                                            while s < 32 * _4341:
                                                                mem[s + _4213 + ceil32(return_data.size) + 32] = mem[s + _4213 + _4257 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4341) + _4213 + ceil32(return_data.size) + 32
                                                            require mem[_4213 + ceil32(return_data.size)] - 1 < mem[_4213 + ceil32(return_data.size)]
                                                            _4789 = mem[(32 * mem[_4213 + ceil32(return_data.size)] - 1) + _4213 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4341) + _4213 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4341) + _4213 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4341) + _4213 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4341) + _4213 + ceil32(return_data.size) + 128] = _4789
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4789
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[mem[64] + 110 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3254 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3359 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3388 = mem[_3359]
                                                            require mem[_3359] <= 4294967296
                                                            require mem[_3359] + 32 <= return_data.size
                                                            require mem[_3359 + mem[_3359]] <= 4294967296 and mem[_3359] + (32 * mem[_3359 + mem[_3359]]) + 32 <= return_data.size
                                                            mem[_3359 + ceil32(return_data.size)] = mem[_3359 + mem[_3359]]
                                                            _3476 = mem[_3359 + _3388]
                                                            s = 0
                                                            while s < 32 * _3476:
                                                                mem[s + _3359 + ceil32(return_data.size) + 32] = mem[s + _3359 + _3388 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3476) + _3359 + ceil32(return_data.size) + 32
                                                            require mem[_3359 + ceil32(return_data.size)] - 1 < mem[_3359 + ceil32(return_data.size)]
                                                            _3924 = mem[(32 * mem[_3359 + ceil32(return_data.size)] - 1) + _3359 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3476) + _3359 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3476) + _3359 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3476) + _3359 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3476) + _3359 + ceil32(return_data.size) + 128] = _3924
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3924
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3254 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4214 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4259 = mem[_4214]
                                                            require mem[_4214] <= 4294967296
                                                            require mem[_4214] + 32 <= return_data.size
                                                            require mem[_4214 + mem[_4214]] <= 4294967296 and mem[_4214] + (32 * mem[_4214 + mem[_4214]]) + 32 <= return_data.size
                                                            mem[_4214 + ceil32(return_data.size)] = mem[_4214 + mem[_4214]]
                                                            _4342 = mem[_4214 + _4259]
                                                            s = 0
                                                            while s < 32 * _4342:
                                                                mem[s + _4214 + ceil32(return_data.size) + 32] = mem[s + _4214 + _4259 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4342) + _4214 + ceil32(return_data.size) + 32
                                                            require mem[_4214 + ceil32(return_data.size)] - 1 < mem[_4214 + ceil32(return_data.size)]
                                                            _4790 = mem[(32 * mem[_4214 + ceil32(return_data.size)] - 1) + _4214 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4342) + _4214 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4342) + _4214 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4342) + _4214 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4342) + _4214 + ceil32(return_data.size) + 128] = _4790
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4790
                                                else:
                                                    _2948 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_2948] = return_data.size
                                                    mem[_2948 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _2997 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = mem[_1829 + 100]
                                                        _2999 = mem[_1829 + 100]
                                                        idx = 0
                                                        while idx < _2999:
                                                            mem[idx + _2997 + 68] = mem[idx + _1829 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        if not _2999 % 32:
                                                            revert with memory
                                                              from mem[64]
                                                               len _2999 + _2997 + -mem[64] + 68
                                                        mem[floor32(_2999) + _2997 + 68] = mem[floor32(_2999) + _2997 + -(_2999 % 32) + 100 len _2999 % 32]
                                                        revert with memory
                                                          from mem[64]
                                                           len floor32(_2999) + _2997 + -mem[64] + 100
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3174 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3294 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3335 = mem[_3294]
                                                            require mem[_3294] <= 4294967296
                                                            require mem[_3294] + 32 <= return_data.size
                                                            require mem[_3294 + mem[_3294]] <= 4294967296 and mem[_3294] + (32 * mem[_3294 + mem[_3294]]) + 32 <= return_data.size
                                                            mem[_3294 + ceil32(return_data.size)] = mem[_3294 + mem[_3294]]
                                                            _3424 = mem[_3294 + _3335]
                                                            s = 0
                                                            while s < 32 * _3424:
                                                                mem[s + _3294 + ceil32(return_data.size) + 32] = mem[s + _3294 + _3335 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3424) + _3294 + ceil32(return_data.size) + 32
                                                            require mem[_3294 + ceil32(return_data.size)] - 1 < mem[_3294 + ceil32(return_data.size)]
                                                            _3927 = mem[(32 * mem[_3294 + ceil32(return_data.size)] - 1) + _3294 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3424) + _3294 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3424) + _3294 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3424) + _3294 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3424) + _3294 + ceil32(return_data.size) + 128] = _3927
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3927
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3174 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4215 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4261 = mem[_4215]
                                                            require mem[_4215] <= 4294967296
                                                            require mem[_4215] + 32 <= return_data.size
                                                            require mem[_4215 + mem[_4215]] <= 4294967296 and mem[_4215] + (32 * mem[_4215 + mem[_4215]]) + 32 <= return_data.size
                                                            mem[_4215 + ceil32(return_data.size)] = mem[_4215 + mem[_4215]]
                                                            _4343 = mem[_4215 + _4261]
                                                            s = 0
                                                            while s < 32 * _4343:
                                                                mem[s + _4215 + ceil32(return_data.size) + 32] = mem[s + _4215 + _4261 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4343) + _4215 + ceil32(return_data.size) + 32
                                                            require mem[_4215 + ceil32(return_data.size)] - 1 < mem[_4215 + ceil32(return_data.size)]
                                                            _4791 = mem[(32 * mem[_4215 + ceil32(return_data.size)] - 1) + _4215 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4343) + _4215 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4343) + _4215 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4343) + _4215 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4343) + _4215 + ceil32(return_data.size) + 128] = _4791
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4791
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_2948 + 32]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[mem[64] + 110 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3256 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3360 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3391 = mem[_3360]
                                                            require mem[_3360] <= 4294967296
                                                            require mem[_3360] + 32 <= return_data.size
                                                            require mem[_3360 + mem[_3360]] <= 4294967296 and mem[_3360] + (32 * mem[_3360 + mem[_3360]]) + 32 <= return_data.size
                                                            mem[_3360 + ceil32(return_data.size)] = mem[_3360 + mem[_3360]]
                                                            _3480 = mem[_3360 + _3391]
                                                            s = 0
                                                            while s < 32 * _3480:
                                                                mem[s + _3360 + ceil32(return_data.size) + 32] = mem[s + _3360 + _3391 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3480) + _3360 + ceil32(return_data.size) + 32
                                                            require mem[_3360 + ceil32(return_data.size)] - 1 < mem[_3360 + ceil32(return_data.size)]
                                                            _3928 = mem[(32 * mem[_3360 + ceil32(return_data.size)] - 1) + _3360 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3480) + _3360 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3480) + _3360 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3480) + _3360 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3480) + _3360 + ceil32(return_data.size) + 128] = _3928
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3928
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3256 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4216 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4263 = mem[_4216]
                                                            require mem[_4216] <= 4294967296
                                                            require mem[_4216] + 32 <= return_data.size
                                                            require mem[_4216 + mem[_4216]] <= 4294967296 and mem[_4216] + (32 * mem[_4216 + mem[_4216]]) + 32 <= return_data.size
                                                            mem[_4216 + ceil32(return_data.size)] = mem[_4216 + mem[_4216]]
                                                            _4344 = mem[_4216 + _4263]
                                                            s = 0
                                                            while s < 32 * _4344:
                                                                mem[s + _4216 + ceil32(return_data.size) + 32] = mem[s + _4216 + _4263 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4344) + _4216 + ceil32(return_data.size) + 32
                                                            require mem[_4216 + ceil32(return_data.size)] - 1 < mem[_4216 + ceil32(return_data.size)]
                                                            _4792 = mem[(32 * mem[_4216 + ceil32(return_data.size)] - 1) + _4216 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4344) + _4216 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4344) + _4216 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4344) + _4216 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4344) + _4216 + ceil32(return_data.size) + 128] = _4792
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4792
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < ('cd', 132).length:
                mem[0] = delegate.return_data[0]
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 8)
                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != 0:
                    require idx < ('cd', 132).length
                    mem[0] = delegate.return_data[0]
                    mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 9)
                    if 0 == sub_4706939a[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                        require idx < ('cd', 132).length
                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                            revert with 0, 'Invalid settlement price.'
                        if not sub_d13039c7[delegate.return_data[0]].field_768:
                            revert with 0, 'Unrecognized market.'
                        if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                            if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] < 0:
                                if sub_d13039c7[delegate.return_data[0]].field_0:
                                    require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                    call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]
                                else:
                                    if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                        if sub_59d339b4[cd[100] << 240] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_59d339b4[cd[100] << 240]
                                        require ext_code.size(sub_c7011a56Address)
                                        call sub_c7011a56Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                    else:
                                        if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if sub_59d339b4[cd[100] << 240] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_59d339b4[cd[100] << 240]
                                        require ext_code.size(sub_c7011a56Address)
                                        call sub_c7011a56Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                        require idx < ('cd', 132).length
                        mem[0] = cd[36]
                        mem[32] = sha3(cd[100] << 240, 3)
                        mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                        mem[mem[64] + 32] = delegate.return_data[0]
                        mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                        mem[mem[64] + 96] = 0
                        emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                idx = idx + 1
                continue 
    else:
        if sub_4f0fb5c5[cd[100] << 240][cd[36]] > cd[68]:
            idx = 0
            while idx < ('cd', 132).length:
                mem[0] = delegate.return_data[0]
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 8)
                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != 0:
                    require idx < ('cd', 132).length
                    mem[0] = delegate.return_data[0]
                    mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 9)
                    if 0 == sub_4706939a[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                        require idx < ('cd', 132).length
                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                            revert with 0, 'Invalid settlement price.'
                        if not sub_d13039c7[delegate.return_data[0]].field_768:
                            revert with 0, 'Unrecognized market.'
                        if not sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                            require idx < ('cd', 132).length
                            mem[0] = cd[36]
                            mem[32] = sha3(cd[100] << 240, 3)
                            mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                            mem[mem[64] + 32] = delegate.return_data[0]
                            mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                            mem[mem[64] + 96] = 0
                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                        else:
                            if not sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68]:
                                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] < 0:
                                    if sub_d13039c7[delegate.return_data[0]].field_0:
                                        require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                        call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]
                                    else:
                                        if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                        else:
                                            if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                require idx < ('cd', 132).length
                                mem[0] = cd[36]
                                mem[32] = sha3(cd[100] << 240, 3)
                                mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                mem[mem[64] + 32] = delegate.return_data[0]
                                mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                mem[mem[64] + 96] = 0
                                emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                            else:
                                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] <= 0:
                                    if sub_d13039c7[delegate.return_data[0]].field_0:
                                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68]:
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]] > -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] - (0 / sub_4f0fb5c5[cd[100] << 240][cd[36]])
                                        else:
                                            if (-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68] != -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if (-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] > -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                            call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] - ((-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]])
                                    else:
                                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if 0 / sub_59d339b4[cd[100] << 240] > 0 / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), 0
                                            else:
                                                if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if 0 / sub_59d339b4[cd[100] << 240] > -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (-1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]) - (0 / sub_59d339b4[cd[100] << 240])
                                        else:
                                            if (-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68] != -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if (-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240] > 0 / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (0 / sub_59d339b4[cd[100] << 240]) - ((-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240])
                                            else:
                                                if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                if sub_59d339b4[cd[100] << 240] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require sub_59d339b4[cd[100] << 240]
                                                if (-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240] > -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                require ext_code.size(sub_c7011a56Address)
                                                call sub_c7011a56Address.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(cd[((32 * idx) + cd[132] + 36)]), (-1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]) - ((-1 * sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) + (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                    require idx < ('cd', 132).length
                                    mem[0] = cd[36]
                                    mem[32] = sha3(cd[100] << 240, 3)
                                    mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 32] = delegate.return_data[0]
                                    mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                    mem[mem[64] + 96] = 0
                                    emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                                else:
                                    mem[0] = delegate.return_data[0]
                                    mem[32] = 10
                                    if not sub_d13039c7[delegate.return_data[0]].field_0:
                                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68]:
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                        else:
                                            if (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68] != sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_59d339b4[cd[100] << 240] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_59d339b4[cd[100] << 240]
                                            require ext_code.size(sub_c7011a56Address)
                                            call sub_c7011a56Address.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(cd[((32 * idx) + cd[132] + 36)]), (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_59d339b4[cd[100] << 240]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                        require idx < ('cd', 132).length
                                        mem[0] = cd[36]
                                        mem[32] = sha3(cd[100] << 240, 3)
                                        mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 32] = delegate.return_data[0]
                                        mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                        mem[mem[64] + 96] = 0
                                        emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                                    else:
                                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68]:
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if not 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                                _1756 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1757 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1757 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1757 + 36 len 28]
                                                mem[64] = _1756 + 164
                                                mem[_1756 + 100] = 32
                                                mem[_1756 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1895 = mem[_1757]
                                                t = _1757 + 32
                                                u = _1756 + 164
                                                s = mem[_1757]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1756 + floor32(mem[_1757]) + 164] = mem[_1757 + -(mem[_1757] % 32) + floor32(mem[_1757]) + 64 len mem[_1757] % 32] or Mask(8 * -(mem[_1757] % 32) + 32, -(8 * -(mem[_1757] % 32) + 32) + 256, mem[_1756 + floor32(mem[_1757]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1756 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1756 + 168 len _1895 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1756 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + 168] = 32
                                                        mem[_1756 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1756 + 232] = mem[idx + _1756 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1756 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1756 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1756 + 200] = 0
                                                        mem[_1756 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1756 + 296] = block.timestamp + 3600
                                                        mem[_1756 + 232] = 160
                                                        mem[_1756 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3345 = mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + 164] = mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3429 = mem[_1756 + _3345 + 164]
                                                            s = 0
                                                            while s < 32 * _3429:
                                                                mem[s + _1756 + ceil32(return_data.size) + 196] = mem[s + _1756 + _3345 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3429) + _1756 + ceil32(return_data.size) + 196
                                                            require mem[_1756 + ceil32(return_data.size) + 164] - 1 < mem[_1756 + ceil32(return_data.size) + 164]
                                                            _3947 = mem[(32 * mem[_1756 + ceil32(return_data.size) + 164] - 1) + _1756 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3429) + _1756 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3429) + _1756 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3429) + _1756 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3429) + _1756 + ceil32(return_data.size) + 292] = _3947
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3947
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1756 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1756 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1756 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1756 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4281 = mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + 164] = mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4353 = mem[_1756 + _4281 + 164]
                                                            s = 0
                                                            while s < 32 * _4353:
                                                                mem[s + _1756 + ceil32(return_data.size) + 196] = mem[s + _1756 + _4281 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4353) + _1756 + ceil32(return_data.size) + 196
                                                            require mem[_1756 + ceil32(return_data.size) + 164] - 1 < mem[_1756 + ceil32(return_data.size) + 164]
                                                            _4801 = mem[(32 * mem[_1756 + ceil32(return_data.size) + 164] - 1) + _1756 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4353) + _1756 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4353) + _1756 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4353) + _1756 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4353) + _1756 + ceil32(return_data.size) + 292] = _4801
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4801
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1756 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1756 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1756 + 200] = 0
                                                        mem[_1756 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1756 + 296] = block.timestamp + 3600
                                                        mem[_1756 + 232] = 160
                                                        mem[_1756 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3406 = mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + 164] = mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3500 = mem[_1756 + _3406 + 164]
                                                            s = 0
                                                            while s < 32 * _3500:
                                                                mem[s + _1756 + ceil32(return_data.size) + 196] = mem[s + _1756 + _3406 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3500) + _1756 + ceil32(return_data.size) + 196
                                                            require mem[_1756 + ceil32(return_data.size) + 164] - 1 < mem[_1756 + ceil32(return_data.size) + 164]
                                                            _3948 = mem[(32 * mem[_1756 + ceil32(return_data.size) + 164] - 1) + _1756 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3500) + _1756 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3500) + _1756 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3500) + _1756 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3500) + _1756 + ceil32(return_data.size) + 292] = _3948
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3948
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1756 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1756 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1756 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1756 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4283 = mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + 164] = mem[_1756 + mem[_1756 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4354 = mem[_1756 + _4283 + 164]
                                                            s = 0
                                                            while s < 32 * _4354:
                                                                mem[s + _1756 + ceil32(return_data.size) + 196] = mem[s + _1756 + _4283 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4354) + _1756 + ceil32(return_data.size) + 196
                                                            require mem[_1756 + ceil32(return_data.size) + 164] - 1 < mem[_1756 + ceil32(return_data.size) + 164]
                                                            _4802 = mem[(32 * mem[_1756 + ceil32(return_data.size) + 164] - 1) + _1756 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4354) + _1756 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4354) + _1756 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4354) + _1756 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4354) + _1756 + ceil32(return_data.size) + 292] = _4802
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4802
                                                else:
                                                    mem[_1756 + 164] = return_data.size
                                                    mem[_1756 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1756 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1756 + ceil32(return_data.size) + 233] = mem[idx + _1756 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1756 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1756 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1756 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1756 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1756 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1756 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1756 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3347 = mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3430 = mem[_1756 + ceil32(return_data.size) + _3347 + 165]
                                                            s = 0
                                                            while s < 32 * _3430:
                                                                mem[s + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1756 + ceil32(return_data.size) + _3347 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3430) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3951 = mem[(32 * mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3430) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3430) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3430) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3430) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3951
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3951
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1756 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1756 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1756 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1756 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4285 = mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4355 = mem[_1756 + ceil32(return_data.size) + _4285 + 165]
                                                            s = 0
                                                            while s < 32 * _4355:
                                                                mem[s + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1756 + ceil32(return_data.size) + _4285 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4355) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4803 = mem[(32 * mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4355) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4355) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4355) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4355) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4803
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4803
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1756 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1756 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1756 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1756 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1756 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1756 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1756 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1756 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1756 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3409 = mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3504 = mem[_1756 + ceil32(return_data.size) + _3409 + 165]
                                                            s = 0
                                                            while s < 32 * _3504:
                                                                mem[s + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1756 + ceil32(return_data.size) + _3409 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3504) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3952 = mem[(32 * mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3504) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3504) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3504) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3504) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3952
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3952
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1756 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1756 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1756 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1756 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1756 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4287 = mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1756 + ceil32(return_data.size) + mem[_1756 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4356 = mem[_1756 + ceil32(return_data.size) + _4287 + 165]
                                                            s = 0
                                                            while s < 32 * _4356:
                                                                mem[s + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1756 + ceil32(return_data.size) + _4287 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4356) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4804 = mem[(32 * mem[_1756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4356) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4356) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4356) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4356) + _1756 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4804
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4804
                                            else:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                                staticcall sub_d13039c7[delegate.return_data[0]].field_768.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0, 
                                                                32,
                                                                54,
                                                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[mem[64] + 122 len 10]
                                                _1846 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1847 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1847 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1847 + 36 len 28]
                                                mem[64] = _1846 + 164
                                                mem[_1846 + 100] = 32
                                                mem[_1846 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1996 = mem[_1847]
                                                t = _1847 + 32
                                                u = _1846 + 164
                                                s = mem[_1847]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1846 + floor32(mem[_1847]) + 164] = mem[_1847 + -(mem[_1847] % 32) + floor32(mem[_1847]) + 64 len mem[_1847] % 32] or Mask(8 * -(mem[_1847] % 32) + 32, -(8 * -(mem[_1847] % 32) + 32) + 256, mem[_1846 + floor32(mem[_1847]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1846 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1846 + 168 len _1996 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1846 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + 168] = 32
                                                        mem[_1846 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1846 + 232] = mem[idx + _1846 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1846 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1846 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1846 + 200] = 0
                                                        mem[_1846 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1846 + 296] = block.timestamp + 3600
                                                        mem[_1846 + 232] = 160
                                                        mem[_1846 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3349 = mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + 164] = mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3431 = mem[_1846 + _3349 + 164]
                                                            s = 0
                                                            while s < 32 * _3431:
                                                                mem[s + _1846 + ceil32(return_data.size) + 196] = mem[s + _1846 + _3349 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3431) + _1846 + ceil32(return_data.size) + 196
                                                            require mem[_1846 + ceil32(return_data.size) + 164] - 1 < mem[_1846 + ceil32(return_data.size) + 164]
                                                            _3955 = mem[(32 * mem[_1846 + ceil32(return_data.size) + 164] - 1) + _1846 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3431) + _1846 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3431) + _1846 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3431) + _1846 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3431) + _1846 + ceil32(return_data.size) + 292] = _3955
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3955
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1846 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1846 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1846 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1846 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4289 = mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + 164] = mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4357 = mem[_1846 + _4289 + 164]
                                                            s = 0
                                                            while s < 32 * _4357:
                                                                mem[s + _1846 + ceil32(return_data.size) + 196] = mem[s + _1846 + _4289 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4357) + _1846 + ceil32(return_data.size) + 196
                                                            require mem[_1846 + ceil32(return_data.size) + 164] - 1 < mem[_1846 + ceil32(return_data.size) + 164]
                                                            _4805 = mem[(32 * mem[_1846 + ceil32(return_data.size) + 164] - 1) + _1846 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4357) + _1846 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4357) + _1846 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4357) + _1846 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4357) + _1846 + ceil32(return_data.size) + 292] = _4805
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4805
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1846 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1846 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + 168] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1846 + 200] = 0
                                                        mem[_1846 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1846 + 296] = block.timestamp + 3600
                                                        mem[_1846 + 232] = 160
                                                        mem[_1846 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3412 = mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + 164] = mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3508 = mem[_1846 + _3412 + 164]
                                                            s = 0
                                                            while s < 32 * _3508:
                                                                mem[s + _1846 + ceil32(return_data.size) + 196] = mem[s + _1846 + _3412 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3508) + _1846 + ceil32(return_data.size) + 196
                                                            require mem[_1846 + ceil32(return_data.size) + 164] - 1 < mem[_1846 + ceil32(return_data.size) + 164]
                                                            _3956 = mem[(32 * mem[_1846 + ceil32(return_data.size) + 164] - 1) + _1846 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3508) + _1846 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3508) + _1846 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3508) + _1846 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3508) + _1846 + ceil32(return_data.size) + 292] = _3956
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3956
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1846 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1846 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1846 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1846 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4291 = mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + 164] = mem[_1846 + mem[_1846 + 164 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4358 = mem[_1846 + _4291 + 164]
                                                            s = 0
                                                            while s < 32 * _4358:
                                                                mem[s + _1846 + ceil32(return_data.size) + 196] = mem[s + _1846 + _4291 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4358) + _1846 + ceil32(return_data.size) + 196
                                                            require mem[_1846 + ceil32(return_data.size) + 164] - 1 < mem[_1846 + ceil32(return_data.size) + 164]
                                                            _4806 = mem[(32 * mem[_1846 + ceil32(return_data.size) + 164] - 1) + _1846 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4358) + _1846 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4358) + _1846 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4358) + _1846 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4358) + _1846 + ceil32(return_data.size) + 292] = _4806
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4806
                                                else:
                                                    mem[_1846 + 164] = return_data.size
                                                    mem[_1846 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1846 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1846 + ceil32(return_data.size) + 233] = mem[idx + _1846 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1846 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1846 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1846 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1846 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1846 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1846 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1846 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3351 = mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3432 = mem[_1846 + ceil32(return_data.size) + _3351 + 165]
                                                            s = 0
                                                            while s < 32 * _3432:
                                                                mem[s + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1846 + ceil32(return_data.size) + _3351 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3432) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3959 = mem[(32 * mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3432) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3432) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3432) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3432) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3959
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3959
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1846 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1846 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1846 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1846 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4293 = mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4359 = mem[_1846 + ceil32(return_data.size) + _4293 + 165]
                                                            s = 0
                                                            while s < 32 * _4359:
                                                                mem[s + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1846 + ceil32(return_data.size) + _4293 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4359) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4807 = mem[(32 * mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4359) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4359) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4359) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4359) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4807
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4807
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1846 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1846 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1846 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1846 + ceil32(return_data.size) + 169] = 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1846 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1846 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1846 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1846 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1846 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3415 = mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3512 = mem[_1846 + ceil32(return_data.size) + _3415 + 165]
                                                            s = 0
                                                            while s < 32 * _3512:
                                                                mem[s + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1846 + ceil32(return_data.size) + _3415 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3512) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3960 = mem[(32 * mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3512) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3512) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3512) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3512) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3960
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3960
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1846 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1846 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1846 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1846 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1846 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4295 = mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1846 + ceil32(return_data.size) + mem[_1846 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, 0 / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4360 = mem[_1846 + ceil32(return_data.size) + _4295 + 165]
                                                            s = 0
                                                            while s < 32 * _4360:
                                                                mem[s + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1846 + ceil32(return_data.size) + _4295 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4360) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4808 = mem[(32 * mem[_1846 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4360) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4360) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4360) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4360) + _1846 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4808
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4808
                                        else:
                                            if (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]] - cd[68] != sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                            if sub_4f0fb5c5[cd[100] << 240][cd[36]] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                            if not (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                                                _1776 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1777 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1777 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1777 + 36 len 28]
                                                mem[64] = _1776 + 164
                                                mem[_1776 + 100] = 32
                                                mem[_1776 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _1921 = mem[_1777]
                                                t = _1777 + 32
                                                u = mem[64]
                                                s = mem[_1777]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[mem[64] + floor32(mem[_1777])] = mem[_1777 + floor32(mem[_1777]) + -(mem[_1777] % 32) + 64 len mem[_1777] % 32] or Mask(8 * -(mem[_1777] % 32) + 32, -(8 * -(mem[_1777] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_1777])])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _1921 + _1776 + -mem[64] + 160]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        _3001 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = mem[_1776 + 100]
                                                        _3003 = mem[_1776 + 100]
                                                        idx = 0
                                                        while idx < _3003:
                                                            mem[idx + _3001 + 68] = mem[idx + _1776 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        if not _3003 % 32:
                                                            revert with memory
                                                              from mem[64]
                                                               len _3003 + _3001 + -mem[64] + 68
                                                        mem[floor32(_3003) + _3001 + 68] = mem[floor32(_3003) + _3001 + -(_3003 % 32) + 100 len _3003 % 32]
                                                        revert with memory
                                                          from mem[64]
                                                           len floor32(_3003) + _3001 + -mem[64] + 100
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3178 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3297 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3337 = mem[_3297]
                                                            require mem[_3297] <= 4294967296
                                                            require mem[_3297] + 32 <= return_data.size
                                                            require mem[_3297 + mem[_3297]] <= 4294967296 and mem[_3297] + (32 * mem[_3297 + mem[_3297]]) + 32 <= return_data.size
                                                            mem[_3297 + ceil32(return_data.size)] = mem[_3297 + mem[_3297]]
                                                            _3425 = mem[_3297 + _3337]
                                                            s = 0
                                                            while s < 32 * _3425:
                                                                mem[s + _3297 + ceil32(return_data.size) + 32] = mem[s + _3297 + _3337 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3425) + _3297 + ceil32(return_data.size) + 32
                                                            require mem[_3297 + ceil32(return_data.size)] - 1 < mem[_3297 + ceil32(return_data.size)]
                                                            _3931 = mem[(32 * mem[_3297 + ceil32(return_data.size)] - 1) + _3297 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3425) + _3297 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3425) + _3297 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3425) + _3297 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3425) + _3297 + ceil32(return_data.size) + 128] = _3931
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3931
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3178 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4217 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4265 = mem[_4217]
                                                            require mem[_4217] <= 4294967296
                                                            require mem[_4217] + 32 <= return_data.size
                                                            require mem[_4217 + mem[_4217]] <= 4294967296 and mem[_4217] + (32 * mem[_4217 + mem[_4217]]) + 32 <= return_data.size
                                                            mem[_4217 + ceil32(return_data.size)] = mem[_4217 + mem[_4217]]
                                                            _4345 = mem[_4217 + _4265]
                                                            s = 0
                                                            while s < 32 * _4345:
                                                                mem[s + _4217 + ceil32(return_data.size) + 32] = mem[s + _4217 + _4265 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4345) + _4217 + ceil32(return_data.size) + 32
                                                            require mem[_4217 + ceil32(return_data.size)] - 1 < mem[_4217 + ceil32(return_data.size)]
                                                            _4793 = mem[(32 * mem[_4217 + ceil32(return_data.size)] - 1) + _4217 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4345) + _4217 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4345) + _4217 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4345) + _4217 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4345) + _4217 + ceil32(return_data.size) + 128] = _4793
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4793
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[mem[64] + 110 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3258 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3361 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3394 = mem[_3361]
                                                            require mem[_3361] <= 4294967296
                                                            require mem[_3361] + 32 <= return_data.size
                                                            require mem[_3361 + mem[_3361]] <= 4294967296 and mem[_3361] + (32 * mem[_3361 + mem[_3361]]) + 32 <= return_data.size
                                                            mem[_3361 + ceil32(return_data.size)] = mem[_3361 + mem[_3361]]
                                                            _3484 = mem[_3361 + _3394]
                                                            s = 0
                                                            while s < 32 * _3484:
                                                                mem[s + _3361 + ceil32(return_data.size) + 32] = mem[s + _3361 + _3394 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3484) + _3361 + ceil32(return_data.size) + 32
                                                            require mem[_3361 + ceil32(return_data.size)] - 1 < mem[_3361 + ceil32(return_data.size)]
                                                            _3932 = mem[(32 * mem[_3361 + ceil32(return_data.size)] - 1) + _3361 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3484) + _3361 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3484) + _3361 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3484) + _3361 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3484) + _3361 + ceil32(return_data.size) + 128] = _3932
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3932
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3258 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4218 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4267 = mem[_4218]
                                                            require mem[_4218] <= 4294967296
                                                            require mem[_4218] + 32 <= return_data.size
                                                            require mem[_4218 + mem[_4218]] <= 4294967296 and mem[_4218] + (32 * mem[_4218 + mem[_4218]]) + 32 <= return_data.size
                                                            mem[_4218 + ceil32(return_data.size)] = mem[_4218 + mem[_4218]]
                                                            _4346 = mem[_4218 + _4267]
                                                            s = 0
                                                            while s < 32 * _4346:
                                                                mem[s + _4218 + ceil32(return_data.size) + 32] = mem[s + _4218 + _4267 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4346) + _4218 + ceil32(return_data.size) + 32
                                                            require mem[_4218 + ceil32(return_data.size)] - 1 < mem[_4218 + ceil32(return_data.size)]
                                                            _4794 = mem[(32 * mem[_4218 + ceil32(return_data.size)] - 1) + _4218 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4346) + _4218 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4346) + _4218 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4346) + _4218 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4346) + _4218 + ceil32(return_data.size) + 128] = _4794
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4794
                                                else:
                                                    _2949 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                                                    mem[_2949] = return_data.size
                                                    mem[_2949 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3005 = mem[64]
                                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 32
                                                        mem[mem[64] + 36] = mem[_1776 + 100]
                                                        _3007 = mem[_1776 + 100]
                                                        idx = 0
                                                        while idx < _3007:
                                                            mem[idx + _3005 + 68] = mem[idx + _1776 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        if not _3007 % 32:
                                                            revert with memory
                                                              from mem[64]
                                                               len _3007 + _3005 + -mem[64] + 68
                                                        mem[floor32(_3007) + _3005 + 68] = mem[floor32(_3007) + _3005 + -(_3007 % 32) + 100 len _3007 % 32]
                                                        revert with memory
                                                          from mem[64]
                                                           len floor32(_3007) + _3005 + -mem[64] + 100
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3182 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3300 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3339 = mem[_3300]
                                                            require mem[_3300] <= 4294967296
                                                            require mem[_3300] + 32 <= return_data.size
                                                            require mem[_3300 + mem[_3300]] <= 4294967296 and mem[_3300] + (32 * mem[_3300 + mem[_3300]]) + 32 <= return_data.size
                                                            mem[_3300 + ceil32(return_data.size)] = mem[_3300 + mem[_3300]]
                                                            _3426 = mem[_3300 + _3339]
                                                            s = 0
                                                            while s < 32 * _3426:
                                                                mem[s + _3300 + ceil32(return_data.size) + 32] = mem[s + _3300 + _3339 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3426) + _3300 + ceil32(return_data.size) + 32
                                                            require mem[_3300 + ceil32(return_data.size)] - 1 < mem[_3300 + ceil32(return_data.size)]
                                                            _3935 = mem[(32 * mem[_3300 + ceil32(return_data.size)] - 1) + _3300 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3426) + _3300 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3426) + _3300 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3426) + _3300 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3426) + _3300 + ceil32(return_data.size) + 128] = _3935
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3935
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3182 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4219 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4269 = mem[_4219]
                                                            require mem[_4219] <= 4294967296
                                                            require mem[_4219] + 32 <= return_data.size
                                                            require mem[_4219 + mem[_4219]] <= 4294967296 and mem[_4219] + (32 * mem[_4219 + mem[_4219]]) + 32 <= return_data.size
                                                            mem[_4219 + ceil32(return_data.size)] = mem[_4219 + mem[_4219]]
                                                            _4347 = mem[_4219 + _4269]
                                                            s = 0
                                                            while s < 32 * _4347:
                                                                mem[s + _4219 + ceil32(return_data.size) + 32] = mem[s + _4219 + _4269 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4347) + _4219 + ceil32(return_data.size) + 32
                                                            require mem[_4219 + ceil32(return_data.size)] - 1 < mem[_4219 + ceil32(return_data.size)]
                                                            _4795 = mem[(32 * mem[_4219 + ceil32(return_data.size)] - 1) + _4219 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4347) + _4219 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4347) + _4219 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4347) + _4219 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4347) + _4219 + ceil32(return_data.size) + 128] = _4795
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4795
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_2949 + 32]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[mem[64] + 110 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        _3260 = mem[64]
                                                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[mem[64] + 36] = 0
                                                        mem[mem[64] + 100] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 132] = block.timestamp + 3600
                                                        mem[mem[64] + 68] = 160
                                                        mem[mem[64] + 164] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3362 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _3397 = mem[_3362]
                                                            require mem[_3362] <= 4294967296
                                                            require mem[_3362] + 32 <= return_data.size
                                                            require mem[_3362 + mem[_3362]] <= 4294967296 and mem[_3362] + (32 * mem[_3362 + mem[_3362]]) + 32 <= return_data.size
                                                            mem[_3362 + ceil32(return_data.size)] = mem[_3362 + mem[_3362]]
                                                            _3488 = mem[_3362 + _3397]
                                                            s = 0
                                                            while s < 32 * _3488:
                                                                mem[s + _3362 + ceil32(return_data.size) + 32] = mem[s + _3362 + _3397 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3488) + _3362 + ceil32(return_data.size) + 32
                                                            require mem[_3362 + ceil32(return_data.size)] - 1 < mem[_3362 + ceil32(return_data.size)]
                                                            _3936 = mem[(32 * mem[_3362 + ceil32(return_data.size)] - 1) + _3362 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3488) + _3362 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3488) + _3362 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _3488) + _3362 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3488) + _3362 + ceil32(return_data.size) + 128] = _3936
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3936
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[mem[64] + 196] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = mem[64] + 196
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while mem[64] + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 196 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.mem[mem[64] len 4] with:
                                                                 gas gas_remaining wei
                                                                args mem[mem[64] + 4 len _3260 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + -mem[64] + 192]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _4220 = mem[64]
                                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 32
                                                            _4271 = mem[_4220]
                                                            require mem[_4220] <= 4294967296
                                                            require mem[_4220] + 32 <= return_data.size
                                                            require mem[_4220 + mem[_4220]] <= 4294967296 and mem[_4220] + (32 * mem[_4220 + mem[_4220]]) + 32 <= return_data.size
                                                            mem[_4220 + ceil32(return_data.size)] = mem[_4220 + mem[_4220]]
                                                            _4348 = mem[_4220 + _4271]
                                                            s = 0
                                                            while s < 32 * _4348:
                                                                mem[s + _4220 + ceil32(return_data.size) + 32] = mem[s + _4220 + _4271 + 32]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4348) + _4220 + ceil32(return_data.size) + 32
                                                            require mem[_4220 + ceil32(return_data.size)] - 1 < mem[_4220 + ceil32(return_data.size)]
                                                            _4796 = mem[(32 * mem[_4220 + ceil32(return_data.size)] - 1) + _4220 + ceil32(return_data.size) + 32]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4348) + _4220 + ceil32(return_data.size) + 32] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4348) + _4220 + ceil32(return_data.size) + 64] = delegate.return_data[0]
                                                            mem[(32 * _4348) + _4220 + ceil32(return_data.size) + 96] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4348) + _4220 + ceil32(return_data.size) + 128] = _4796
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4796
                                            else:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                                staticcall sub_d13039c7[delegate.return_data[0]].field_768.0xdd62ed3e with:
                                                        gas gas_remaining wei
                                                       args this.address, stor11
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0]:
                                                    revert with 0, 
                                                                32,
                                                                54,
                                                                0x2e5361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                                                mem[mem[64] + 122 len 10]
                                                _1889 = mem[64]
                                                mem[mem[64] + 36] = stor11
                                                mem[mem[64] + 68] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                _1890 = mem[64]
                                                mem[mem[64]] = 68
                                                mem[64] = mem[64] + 100
                                                mem[_1890 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1890 + 36 len 28]
                                                mem[64] = _1889 + 164
                                                mem[_1889 + 100] = 32
                                                mem[_1889 + 132] = 'SafeERC20: low-level call failed'
                                                if not ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768):
                                                    revert with 0, 'Address: call to non-contract'
                                                _2008 = mem[_1890]
                                                t = _1890 + 32
                                                u = _1889 + 164
                                                s = mem[_1890]
                                                while s >= 32:
                                                    mem[u] = mem[t]
                                                    t = t + 32
                                                    u = u + 32
                                                    s = s - 32
                                                    continue 
                                                mem[_1889 + floor32(mem[_1890]) + 164] = mem[_1890 + -(mem[_1890] % 32) + floor32(mem[_1890]) + 64 len mem[_1890] % 32] or Mask(8 * -(mem[_1890] % 32) + 32, -(8 * -(mem[_1890] % 32) + 32) + 256, mem[_1889 + floor32(mem[_1890]) + 164])
                                                call sub_d13039c7[delegate.return_data[0]].field_768.mem[_1889 + 164 len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[_1889 + 168 len _2008 - 4]
                                                if not return_data.size:
                                                    if not ext_call.success:
                                                        if mem[96]:
                                                            revert with memory
                                                              from 128
                                                               len mem[96]
                                                        mem[_1889 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + 168] = 32
                                                        mem[_1889 + 200] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1889 + 232] = mem[idx + _1889 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with memory
                                                          from mem[64]
                                                           len _1889 + -mem[64] + 264
                                                    if not mem[96]:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1889 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + 168] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1889 + 200] = 0
                                                        mem[_1889 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1889 + 296] = block.timestamp + 3600
                                                        mem[_1889 + 232] = 160
                                                        mem[_1889 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3341 = mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + 164] = mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3427 = mem[_1889 + _3341 + 164]
                                                            s = 0
                                                            while s < 32 * _3427:
                                                                mem[s + _1889 + ceil32(return_data.size) + 196] = mem[s + _1889 + _3341 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3427) + _1889 + ceil32(return_data.size) + 196
                                                            require mem[_1889 + ceil32(return_data.size) + 164] - 1 < mem[_1889 + ceil32(return_data.size) + 164]
                                                            _3939 = mem[(32 * mem[_1889 + ceil32(return_data.size) + 164] - 1) + _1889 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3427) + _1889 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3427) + _1889 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3427) + _1889 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3427) + _1889 + ceil32(return_data.size) + 292] = _3939
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3939
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1889 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1889 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1889 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1889 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4273 = mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + 164] = mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4349 = mem[_1889 + _4273 + 164]
                                                            s = 0
                                                            while s < 32 * _4349:
                                                                mem[s + _1889 + ceil32(return_data.size) + 196] = mem[s + _1889 + _4273 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4349) + _1889 + ceil32(return_data.size) + 196
                                                            require mem[_1889 + ceil32(return_data.size) + 164] - 1 < mem[_1889 + ceil32(return_data.size) + 164]
                                                            _4797 = mem[(32 * mem[_1889 + ceil32(return_data.size) + 164] - 1) + _1889 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4349) + _1889 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4349) + _1889 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4349) + _1889 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4349) + _1889 + ceil32(return_data.size) + 292] = _4797
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4797
                                                    else:
                                                        require mem[96] >= 32
                                                        if not mem[128]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1889 + 274 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1889 + 164] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + 168] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1889 + 200] = 0
                                                        mem[_1889 + 264] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1889 + 296] = block.timestamp + 3600
                                                        mem[_1889 + 232] = 160
                                                        mem[_1889 + 328] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _3400 = mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + 164] = mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _3492 = mem[_1889 + _3400 + 164]
                                                            s = 0
                                                            while s < 32 * _3492:
                                                                mem[s + _1889 + ceil32(return_data.size) + 196] = mem[s + _1889 + _3400 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3492) + _1889 + ceil32(return_data.size) + 196
                                                            require mem[_1889 + ceil32(return_data.size) + 164] - 1 < mem[_1889 + ceil32(return_data.size) + 164]
                                                            _3940 = mem[(32 * mem[_1889 + ceil32(return_data.size) + 164] - 1) + _1889 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3492) + _1889 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3492) + _1889 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _3492) + _1889 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3492) + _1889 + ceil32(return_data.size) + 292] = _3940
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3940
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1889 + 360] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1889 + 360
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1889 + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 360 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1889 + 360 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + 164
                                                            require return_data.size >= 32
                                                            _4275 = mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164] <= 4294967296 and mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + 164] = mem[_1889 + mem[_1889 + 164 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 164]
                                                            _4350 = mem[_1889 + _4275 + 164]
                                                            s = 0
                                                            while s < 32 * _4350:
                                                                mem[s + _1889 + ceil32(return_data.size) + 196] = mem[s + _1889 + _4275 + 196]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4350) + _1889 + ceil32(return_data.size) + 196
                                                            require mem[_1889 + ceil32(return_data.size) + 164] - 1 < mem[_1889 + ceil32(return_data.size) + 164]
                                                            _4798 = mem[(32 * mem[_1889 + ceil32(return_data.size) + 164] - 1) + _1889 + ceil32(return_data.size) + 196]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4350) + _1889 + ceil32(return_data.size) + 196] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4350) + _1889 + ceil32(return_data.size) + 228] = delegate.return_data[0]
                                                            mem[(32 * _4350) + _1889 + ceil32(return_data.size) + 260] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4350) + _1889 + ceil32(return_data.size) + 292] = _4798
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4798
                                                else:
                                                    mem[_1889 + 164] = return_data.size
                                                    mem[_1889 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    if not ext_call.success:
                                                        if return_data.size:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[_1889 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + ceil32(return_data.size) + 169] = 32
                                                        idx = 0
                                                        while idx < 32:
                                                            mem[idx + _1889 + ceil32(return_data.size) + 233] = mem[idx + _1889 + 132]
                                                            idx = idx + 32
                                                            continue 
                                                        revert with 0, 32, 32, mem[_1889 + ceil32(return_data.size) + 233]
                                                    if not return_data.size:
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1889 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + ceil32(return_data.size) + 169] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1889 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1889 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1889 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1889 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1889 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3343 = mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3428 = mem[_1889 + ceil32(return_data.size) + _3343 + 165]
                                                            s = 0
                                                            while s < 32 * _3428:
                                                                mem[s + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1889 + ceil32(return_data.size) + _3343 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3428) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3943 = mem[(32 * mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3428) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3428) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3428) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3428) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3943
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3943
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1889 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1889 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1889 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1889 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4277 = mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4351 = mem[_1889 + ceil32(return_data.size) + _4277 + 165]
                                                            s = 0
                                                            while s < 32 * _4351:
                                                                mem[s + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1889 + ceil32(return_data.size) + _4277 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4351) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4799 = mem[(32 * mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4351) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4351) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4351) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4351) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4799
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4799
                                                    else:
                                                        require return_data.size >= 32
                                                        if not mem[_1889 + 196]:
                                                            revert with 0, 
                                                                        32,
                                                                        42,
                                                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                        mem[_1889 + ceil32(return_data.size) + 275 len 22]
                                                        mem[0] = sub_d13039c7[delegate.return_data[0]].field_768
                                                        mem[32] = 4
                                                        mem[_1889 + ceil32(return_data.size) + 165] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                        mem[_1889 + ceil32(return_data.size) + 169] = (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                        mem[_1889 + ceil32(return_data.size) + 201] = 0
                                                        mem[_1889 + ceil32(return_data.size) + 265] = address(cd[((32 * idx) + cd[132] + 36)])
                                                        mem[_1889 + ceil32(return_data.size) + 297] = block.timestamp + 3600
                                                        mem[_1889 + ceil32(return_data.size) + 233] = 160
                                                        mem[_1889 + ceil32(return_data.size) + 329] = uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                        if not uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]):
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _3403 = mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _3496 = mem[_1889 + ceil32(return_data.size) + _3403 + 165]
                                                            s = 0
                                                            while s < 32 * _3496:
                                                                mem[s + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1889 + ceil32(return_data.size) + _3403 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _3496) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _3944 = mem[(32 * mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _3496) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _3496) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _3496) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _3496) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _3944
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _3944
                                                        else:
                                                            mem[0] = sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4)
                                                            mem[_1889 + ceil32(return_data.size) + 361] = address(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])
                                                            s = _1889 + ceil32(return_data.size) + 361
                                                            t = sha3(sha3(sub_d13039c7[delegate.return_data[0]].field_768, 4))
                                                            while _1889 + ceil32(return_data.size) + (32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])) + 361 > s + 32:
                                                                mem[s + 32] = sub_d533b8ca[t].field_0
                                                                s = s + 32
                                                                t = t + 1
                                                                continue 
                                                            require ext_code.size(stor11)
                                                            call stor11.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                                 gas gas_remaining wei
                                                                args (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]], 0, 160, address(cd[((32 * idx) + cd[132] + 36)]), block.timestamp + 3600, uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768]), mem[_1889 + ceil32(return_data.size) + 361 len 32 * uint256(sub_95a1ae30[stor10[delegate.return_data[0]].field_768])]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            mem[_1889 + ceil32(return_data.size) + 165 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                            mem[64] = _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165
                                                            require return_data.size >= 32
                                                            _4279 = mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 <= 4294967296
                                                            require mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 32 <= return_data.size
                                                            require mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165] <= 4294967296 and mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + (32 * mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]) + 32 <= return_data.size
                                                            mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = mem[_1889 + ceil32(return_data.size) + mem[_1889 + ceil32(return_data.size) + 165 len 4], Mask(224, 32, (sub_4f0fb5c5[cd[100] << 240][cd[36]] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) - (cd[68] * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]) / sub_4f0fb5c5[cd[100] << 240][cd[36]]) >> 32 + 165]
                                                            _4352 = mem[_1889 + ceil32(return_data.size) + _4279 + 165]
                                                            s = 0
                                                            while s < 32 * _4352:
                                                                mem[s + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = mem[s + _1889 + ceil32(return_data.size) + _4279 + 197]
                                                                s = s + 32
                                                                continue 
                                                            mem[64] = (32 * _4352) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197
                                                            require mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1 < mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165]
                                                            _4800 = mem[(32 * mem[_1889 + ceil32(return_data.size) + ceil32(return_data.size) + 165] - 1) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                                                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                                                            require idx < ('cd', 132).length
                                                            mem[0] = cd[36]
                                                            mem[32] = sha3(cd[100] << 240, 3)
                                                            mem[(32 * _4352) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = address(cd[((32 * idx) + cd[132] + 36)])
                                                            mem[(32 * _4352) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 229] = delegate.return_data[0]
                                                            mem[(32 * _4352) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 261] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                                                            mem[(32 * _4352) + _1889 + ceil32(return_data.size) + ceil32(return_data.size) + 293] = _4800
                                                            emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], _4800
                idx = idx + 1
                continue 
        else:
            idx = 0
            while idx < ('cd', 132).length:
                mem[0] = delegate.return_data[0]
                mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 8)
                if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != 0:
                    require idx < ('cd', 132).length
                    mem[0] = delegate.return_data[0]
                    mem[32] = sha3(address(cd[((32 * idx) + cd[132] + 36)]), 9)
                    if 0 == sub_4706939a[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                        require idx < ('cd', 132).length
                        if not sub_4f0fb5c5[cd[100] << 240][cd[36]]:
                            revert with 0, 'Invalid settlement price.'
                        if not sub_d13039c7[delegate.return_data[0]].field_768:
                            revert with 0, 'Unrecognized market.'
                        if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                            if sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] < 0:
                                if sub_d13039c7[delegate.return_data[0]].field_0:
                                    require ext_code.size(sub_d13039c7[delegate.return_data[0]].field_768)
                                    call sub_d13039c7[delegate.return_data[0]].field_768.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args address(cd[((32 * idx) + cd[132] + 36)]), -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]
                                else:
                                    if not -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]]:
                                        if sub_59d339b4[cd[100] << 240] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_59d339b4[cd[100] << 240]
                                        require ext_code.size(sub_c7011a56Address)
                                        call sub_c7011a56Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), 0 / sub_59d339b4[cd[100] << 240]
                                    else:
                                        if -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / -sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] != sub_d13039c7[delegate.return_data[0]].field_512:
                                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        if sub_59d339b4[cd[100] << 240] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require sub_59d339b4[cd[100] << 240]
                                        require ext_code.size(sub_c7011a56Address)
                                        call sub_c7011a56Address.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args address(cd[((32 * idx) + cd[132] + 36)]), -1 * sub_d13039c7[delegate.return_data[0]].field_512 * sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] / sub_59d339b4[cd[100] << 240]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                            sub_34176a6d[address(cd[((32 * idx) + cd[132] + 36)])][delegate.return_data[0]] = 0
                        require idx < ('cd', 132).length
                        mem[0] = cd[36]
                        mem[32] = sha3(cd[100] << 240, 3)
                        mem[mem[64]] = address(cd[((32 * idx) + cd[132] + 36)])
                        mem[mem[64] + 32] = delegate.return_data[0]
                        mem[mem[64] + 64] = sub_4f0fb5c5[cd[100] << 240][cd[36]]
                        mem[mem[64] + 96] = 0
                        emit 0xb6304693: address(cd[((32 * idx) + cd[132] + 36)]), delegate.return_data[0], sub_4f0fb5c5[cd[100] << 240][cd[36]], 0
                idx = idx + 1
                continue 
}



}
