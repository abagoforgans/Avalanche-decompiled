contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
uint8 stor2; offset 160
uint128 stor2; offset 160
address depositTokenAddress;
uint256 sub_f34ad1f9;
uint256 maxTotalSupply;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() payable {
    return totalSupply
}

function maxTotalSupply() payable {
    return maxTotalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function owner() payable {
    return address(owner)
}

function depositToken() payable {
    return depositTokenAddress
}

function acceptingDeposits() payable {
    return bool(uint8(stor2.field_160))
}

function sub_f34ad1f9(?) payable {
    return sub_f34ad1f9
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function sub_85c13796(?) payable {
    require calldata.size - 4 >= 96
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
    sub_f34ad1f9 = arg2
    maxTotalSupply = arg3
    if not arg1:
        emit 0x717a1648 
    else:
        emit 0xf5586762: sub_f34ad1f9, maxTotalSupply
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

function recover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
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

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x21426966726f73743a3a6465706f7369743a2063616e6e6f74206465706f7369742030,
                    mem[199 len 29]
    if not uint8(stor2.field_160):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x73426966726f73743a3a6465706f7369743a2063757272656e746c79206e6f7420616363657074696e67206465706f73697473,
                    mem[215 len 13]
    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + balanceOf[msg.sender] > sub_f34ad1f9:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x21426966726f73743a3a6465706f7369743a2063616e6e6f74206465706f736974206d6f7265207468616e206d6178696d756d20616c6c6f776564,
                    mem[223 len 5]
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + totalSupply > maxTotalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c426966726f73743a3a6465706f7369743a206d617820746f74616c206465706f7369742072656163686564,
                    mem[208 len 20]
    if arg1 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg1
    if arg1 + balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[msg.sender] += arg1
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(depositTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    call depositTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
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
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
    emit Deposited(arg1, msg.sender);
    stor0 = 1
}



}
