contract main {




// =====================  Runtime code  =====================


address owner;
address rewardTokenAddress;
mapping of uint8 stor2;

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
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

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(arg2)
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

function harvest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor2[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, '!permission'
    if arg1 <= block.timestamp:
        revert with 0, '!available'
    if block.timestamp > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 - block.timestamp:
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, 0
    else:
        if (10^18 * arg1) - (10^18 * block.timestamp) / arg1 - block.timestamp != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require ext_code.size(rewardTokenAddress)
        call rewardTokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args this.address, (10^18 * arg1) - (10^18 * block.timestamp)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function emergencyWithdraw(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if 1 == bool(stor2[msg.sender]):
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
        mem[324 len 0] = 0
    else:
        if owner != msg.sender:
            revert with 0, '!permission'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
    call rewardTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, arg1
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
}



}
