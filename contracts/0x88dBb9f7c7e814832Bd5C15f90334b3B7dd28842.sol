contract main {




// =====================  Runtime code  =====================


#
#  - sub_d85a567e(?)
#
uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
address sub_c81d5839Address;
uint256 vestingStart;
uint256 vestingDuration;
uint256 sub_83b18493;
mapping of struct balanceOf;
mapping of uint256 sub_b31005c2;
mapping of uint256 sub_0cfee0ea;
mapping of uint256 controller;

function sub_0cfee0ea(?) payable {
    require calldata.size - 4 >= 32
    return sub_0cfee0ea[address(arg1)]
}

function vestingDuration() payable {
    return vestingDuration
}

function vestingStart() payable {
    return vestingStart
}

function controllerAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    return controller[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function sub_83b18493(?) payable {
    return sub_83b18493
}

function owner() payable {
    return address(owner)
}

function sub_b31005c2(?) payable {
    require calldata.size - 4 >= 32
    return sub_b31005c2[address(arg1)]
}

function sub_c81d5839(?) payable {
    return sub_c81d5839Address
}

function _fallback() payable {
    revert
}

function sub_e1d14ac9(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    controller[address(arg1)] = arg2
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function setBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    balanceOf[address(arg1)].field_0 = arg2
}

function sub_d2230c0f(?) payable {
    require calldata.size - 4 >= 32
    if vestingDuration + sub_b31005c2[address(arg1)] < sub_b31005c2[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    return (vestingDuration + sub_b31005c2[address(arg1)] < block.timestamp)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function addToBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        66,
                        0x6e4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420746f2062616c616e6365,
                        mem[230 len 30]
        if arg2 < controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        66,
                        0x6e4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420746f2062616c616e6365,
                        mem[230 len 30]
    if arg2 + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)].field_0 += arg2
}

function recoverERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit Recovered(address(arg1), arg2);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0, 'Cannot withdraw 0'
    require ext_code.size(sub_c81d5839Address)
    staticcall sub_c81d5839Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Insufficient supply to withdraw'
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x21496e73756666696369656e7420636f6d70656e736174696f6e20746f2077697468647261,
                    mem[201 len 27]
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 -= arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_c81d5839Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
    call sub_c81d5839Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, arg1
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xa58f89b7: arg1, msg.sender
    stor0 = 1
}

function sub_59c2971f(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                        mem[208 len 20]
    sub_b31005c2[address(arg1)] = arg2
    if sub_b31005c2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(arg1)] / vestingDuration:
        if sub_0cfee0ea[address(arg1)] + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += sub_0cfee0ea[address(arg1)]
        if sub_83b18493 > sub_b31005c2[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(arg1)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
}

function vest(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_0cfee0ea[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6443616e6e6f74207665737420616e206164647265737320776869636820686173206e6f20636f6d70656e736174696f,
                    mem[212 len 16]
    if vestingDuration + sub_b31005c2[address(arg1)] < sub_b31005c2[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if vestingDuration + sub_b31005c2[address(arg1)] >= block.timestamp:
        revert with 0, 'Not yet time to vest'
    if sub_b31005c2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(arg1)] / vestingDuration:
        if sub_0cfee0ea[address(arg1)] + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += sub_0cfee0ea[address(arg1)]
        if sub_83b18493 > sub_b31005c2[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(arg1)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
    stor0 = 1
}

function sub_e238814c(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                        mem[233 len 27]
        if arg2 < controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                        mem[233 len 27]
    if sub_b31005c2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(arg1)] / vestingDuration:
        if sub_0cfee0ea[address(arg1)] + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += sub_0cfee0ea[address(arg1)]
        if sub_83b18493 > sub_b31005c2[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(arg1)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
    sub_0cfee0ea[address(arg1)] = arg2
}

function sub_a88ff8ec(?) payable {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_0cfee0ea[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x6443616e6e6f74207665737420616e206164647265737320776869636820686173206e6f20636f6d70656e736174696f,
                    mem[212 len 16]
    if vestingDuration + sub_b31005c2[address(msg.sender)] < sub_b31005c2[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    if vestingDuration + sub_b31005c2[address(msg.sender)] >= block.timestamp:
        revert with 0, 'Not yet time to vest'
    if sub_b31005c2[address(msg.sender)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(msg.sender)] / vestingDuration:
        if sub_0cfee0ea[address(msg.sender)] + balanceOf[address(msg.sender)].field_0 < balanceOf[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)].field_0 += sub_0cfee0ea[address(msg.sender)]
        if sub_83b18493 > sub_b31005c2[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(msg.sender)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(msg.sender)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(msg.sender)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 7
                sub_b31005c2[address(msg.sender)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 7
                sub_b31005c2[address(msg.sender)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(msg.sender)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 7
                sub_b31005c2[address(msg.sender)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = msg.sender
                mem[32] = 7
                sub_b31005c2[address(msg.sender)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(msg.sender)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
    stor0 = 1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not balanceOf[msg.sender].field_0:
        revert with 0, 'Cannot withdraw 0'
    require ext_code.size(sub_c81d5839Address)
    staticcall sub_c81d5839Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < balanceOf[msg.sender].field_0:
        revert with 0, 'Insufficient supply to withdraw'
    if balanceOf[msg.sender].field_0 > balanceOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x21496e73756666696369656e7420636f6d70656e736174696f6e20746f2077697468647261,
                    mem[201 len 27]
    if balanceOf[msg.sender].field_0 > balanceOf[msg.sender].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[msg.sender].field_0 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_c81d5839Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender].field_32
    call sub_c81d5839Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args balanceOf[msg.sender].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender].field_0
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xa58f89b7: balanceOf[msg.sender].field_0, msg.sender
    stor0 = 1
}

function addBeneficiary(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if sub_0cfee0ea[address(arg1)]:
        revert with 0, 'Beneficiary already exists'
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420612062656e6566696369617279,
                        mem[233 len 27]
        if arg2 < controller[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420612062656e6566696369617279,
                        mem[233 len 27]
        if address(owner) != msg.sender:
            if not controller[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[233 len 27]
            if arg2 < controller[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[233 len 27]
    if sub_b31005c2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(arg1)] / vestingDuration:
        if sub_0cfee0ea[address(arg1)] + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += sub_0cfee0ea[address(arg1)]
        if sub_83b18493 > sub_b31005c2[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(arg1)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
    sub_0cfee0ea[address(arg1)] = arg2
    if sub_83b18493 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    if not block.timestamp - sub_83b18493 / vestingDuration:
        if sub_83b18493 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if address(owner) != msg.sender:
            if not controller[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                            mem[208 len 20]
        sub_b31005c2[address(arg1)] = sub_83b18493
    else:
        if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if address(owner) != msg.sender:
            if not controller[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            44,
                            0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                            mem[208 len 20]
        sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
    if sub_b31005c2[address(arg1)] > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if vestingDuration <= 0:
        revert with 0, 'SafeMath: division by zero'
    require vestingDuration
    idx = 0
    while idx < block.timestamp - sub_b31005c2[address(arg1)] / vestingDuration:
        if sub_0cfee0ea[address(arg1)] + balanceOf[address(arg1)].field_0 < balanceOf[address(arg1)].field_0:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)].field_0 += sub_0cfee0ea[address(arg1)]
        if sub_83b18493 > sub_b31005c2[address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
            revert with 0, 'SafeMath: addition overflow'
        if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493
        else:
            if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        if not sub_b31005c2[address(arg1)]:
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        else:
            if sub_83b18493 > sub_b31005c2[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = arg1
                mem[32] = 7
                sub_b31005c2[address(arg1)] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(arg1)] - sub_83b18493 / vestingDuration * vestingDuration)
        idx = idx + 1
        continue 
}

function sub_f00abd4a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0, 
                        32,
                        54,
                        0x644f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e2073657420636f6d70656e736174696f6e20616d6f756e7473,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 282 len 10]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    57,
                    0x215468652073616d65206e756d626572206f662061646472657373657320616e6420616d6f756e7473206d7573742062652070726f76696465,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 285 len 7]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if msg.sender == address(owner):
            if sub_b31005c2[mem[(32 * idx) + 140 len 20]] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            s = 0
            while s < block.timestamp - sub_b31005c2[mem[(32 * idx) + 140 len 20]] / vestingDuration:
                if sub_0cfee0ea[address(mem[(32 * idx) + 128])] + balanceOf[address(mem[(32 * idx) + 128])].field_0 < balanceOf[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(mem[(32 * idx) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * idx) + 128])]
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                if not sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    if sub_83b18493 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if not block.timestamp - sub_83b18493 / vestingDuration:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                    else:
                        if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
                else:
                    if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                    else:
                        if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                s = s + 1
                continue 
        else:
            if not controller[msg.sender]:
                revert with 0, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
            if mem[(32 * idx) + (32 * arg1.length) + 160] < controller[msg.sender]:
                revert with 0, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
            if sub_b31005c2[address(mem[(32 * idx) + 128])] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            s = 0
            while s < block.timestamp - sub_b31005c2[address(mem[(32 * idx) + 128])] / vestingDuration:
                if sub_0cfee0ea[address(mem[(32 * idx) + 128])] + balanceOf[address(mem[(32 * idx) + 128])].field_0 < balanceOf[address(mem[(32 * idx) + 128])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(mem[(32 * idx) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * idx) + 128])]
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                if not sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    if sub_83b18493 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if not block.timestamp - sub_83b18493 / vestingDuration:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                    else:
                        if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
                else:
                    if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                    else:
                        if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * idx) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                s = s + 1
                continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        sub_0cfee0ea[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}

function addBeneficiaries(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if address(owner) != msg.sender:
        if not controller[msg.sender]:
            revert with 0, 
                        32,
                        47,
                        0x734f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e206164642062656e65666963696172696573,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 275 len 17]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    57,
                    0x215468652073616d65206e756d626572206f662061646472657373657320616e6420616d6f756e7473206d7573742062652070726f76696465,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 285 len 7]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if sub_0cfee0ea[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'Beneficiary already exists'
        if msg.sender == address(owner):
            if sub_b31005c2[address(mem[(32 * idx) + 128])] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            s = 0
            while s < block.timestamp - sub_b31005c2[address(mem[(32 * s) + 128])] / vestingDuration:
                if sub_0cfee0ea[address(mem[(32 * s) + 128])] + balanceOf[address(mem[(32 * s) + 128])].field_0 < balanceOf[address(mem[(32 * s) + 128])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(mem[(32 * s) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * s) + 128])]
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * s) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                if not sub_b31005c2[address(mem[(32 * s) + 128])]:
                    if sub_83b18493 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if not block.timestamp - sub_83b18493 / vestingDuration:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                    else:
                        if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
                else:
                    if sub_83b18493 > sub_b31005c2[address(mem[(32 * s) + 128])]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                    else:
                        if vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                s = s + 1
                continue 
            sub_0cfee0ea[address(mem[(32 * s) + 128])] = mem[(32 * s) + (32 * arg1.length) + 160]
            if sub_83b18493 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if not block.timestamp - sub_83b18493 / vestingDuration:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if address(owner) != msg.sender:
                    if not controller[msg.sender]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
                sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
            else:
                if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if address(owner) != msg.sender:
                    if not controller[msg.sender]:
                        revert with 0, 
                                    32,
                                    44,
                                    0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
                sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
            mem[0] = mem[(32 * s) + 140 len 20]
            mem[32] = 7
            if sub_b31005c2[address(mem[(32 * s) + 128])] > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            t = 0
            while t < block.timestamp - sub_b31005c2[address(mem[(32 * s) + 128])] / vestingDuration:
                if sub_0cfee0ea[address(mem[(32 * s) + 128])] + balanceOf[address(mem[(32 * s) + 128])].field_0 < balanceOf[address(mem[(32 * s) + 128])].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(mem[(32 * s) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * s) + 128])]
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * s) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                if not sub_b31005c2[address(mem[(32 * s) + 128])]:
                    if sub_83b18493 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if not block.timestamp - sub_83b18493 / vestingDuration:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                    else:
                        if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
                else:
                    if sub_83b18493 > sub_b31005c2[address(mem[(32 * s) + 128])]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if vestingDuration <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require vestingDuration
                    if (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1:
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493
                    else:
                        if vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                            revert with 0, 
                                        32,
                                        33,
                                        0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                        if sub_83b18493 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = mem[(32 * s) + 140 len 20]
                        mem[32] = 7
                        sub_b31005c2[address(mem[(32 * s) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * s) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
                t = t + 1
                continue 
            s = s + 1
            continue 
        if not controller[msg.sender]:
            revert with 0, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420612062656e6566696369617279,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
        if mem[(32 * idx) + (32 * arg1.length) + 160] < controller[msg.sender]:
            revert with 0, 
                        32,
                        69,
                        0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2061646420612062656e6566696369617279,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
        if address(owner) != msg.sender:
            if not controller[msg.sender]:
                revert with 0, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
            if mem[(32 * idx) + (32 * arg1.length) + 160] < controller[msg.sender]:
                revert with 0, 
                            32,
                            69,
                            0x214f6e6c79206f776e6572206f7220636f6e74726f6c6c65722077697468206e6563657373617279206c696d6974732063616e2073657420636f6d70656e736174696f6e73,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 297 len 27]
        if sub_b31005c2[address(mem[(32 * idx) + 128])] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        s = 0
        while s < block.timestamp - sub_b31005c2[address(mem[(32 * idx) + 128])] / vestingDuration:
            if sub_0cfee0ea[address(mem[(32 * idx) + 128])] + balanceOf[address(mem[(32 * idx) + 128])].field_0 < balanceOf[address(mem[(32 * idx) + 128])].field_0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(mem[(32 * idx) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * idx) + 128])]
            if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
            if not sub_b31005c2[address(mem[(32 * idx) + 128])]:
                if sub_83b18493 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if not block.timestamp - sub_83b18493 / vestingDuration:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
            else:
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
            s = s + 1
            continue 
        sub_0cfee0ea[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160]
        if sub_83b18493 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        if not block.timestamp - sub_83b18493 / vestingDuration:
            if sub_83b18493 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if address(owner) != msg.sender:
                if not controller[msg.sender]:
                    revert with 0, 
                                32,
                                44,
                                0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
            sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
        else:
            if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                revert with 0, 
                            32,
                            33,
                            0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
            if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if address(owner) != msg.sender:
                if not controller[msg.sender]:
                    revert with 0, 
                                32,
                                44,
                                0x6c4f6e6c79206f776e6572206f7220636f6e74726f6c6c65722063616e207365742074696d657374616d7073,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 272 len 20]
            sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if sub_b31005c2[address(mem[(32 * idx) + 128])] > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if vestingDuration <= 0:
            revert with 0, 'SafeMath: division by zero'
        require vestingDuration
        s = 0
        while s < block.timestamp - sub_b31005c2[address(mem[(32 * idx) + 128])] / vestingDuration:
            if sub_0cfee0ea[address(mem[(32 * idx) + 128])] + balanceOf[address(mem[(32 * idx) + 128])].field_0 < balanceOf[address(mem[(32 * idx) + 128])].field_0:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(mem[(32 * idx) + 128])].field_0 += sub_0cfee0ea[address(mem[(32 * idx) + 128])]
            if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                revert with 0, 'SafeMath: subtraction overflow'
            if vestingDuration <= 0:
                revert with 0, 'SafeMath: division by zero'
            require vestingDuration
            if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                revert with 0, 'SafeMath: addition overflow'
            if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
            else:
                if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                    revert with 0, 
                                32,
                                33,
                                0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                if sub_83b18493 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
            if not sub_b31005c2[address(mem[(32 * idx) + 128])]:
                if sub_83b18493 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if not block.timestamp - sub_83b18493 / vestingDuration:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration * block.timestamp - sub_83b18493 / vestingDuration / block.timestamp - sub_83b18493 / vestingDuration != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration) < vestingDuration * block.timestamp - sub_83b18493 / vestingDuration:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + (vestingDuration * block.timestamp - sub_83b18493 / vestingDuration)
            else:
                if sub_83b18493 > sub_b31005c2[address(mem[(32 * idx) + 128])]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if vestingDuration <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require vestingDuration
                if (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 < sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration:
                    revert with 0, 'SafeMath: addition overflow'
                if not (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1:
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493
                else:
                    if vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration) / (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration) + 1 != vestingDuration:
                        revert with 0, 
                                    32,
                                    33,
                                    0x77536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * arg1.length) + (32 * arg2.length) + 261 len 31]
                    if sub_83b18493 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = mem[(32 * idx) + 140 len 20]
                    mem[32] = 7
                    sub_b31005c2[address(mem[(32 * idx) + 128])] = sub_83b18493 + vestingDuration + (sub_b31005c2[address(mem[(32 * idx) + 128])] - sub_83b18493 / vestingDuration * vestingDuration)
            s = s + 1
            continue 
        idx = idx + 1
        continue 
}



}
