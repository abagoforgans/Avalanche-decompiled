contract main {




// =====================  Runtime code  =====================


#
#  - sub_dd925551(?)
#
address stor0;
uint8 stor1; offset 160
address owner;
uint256 stor1;
uint256 stor2;
address stakingAddress;
uint256 pool;
uint16 slippage;
uint16 deadline; offset 16
address stakingTokenAddress; offset 32
address rewardTokenAddress;

function pool() payable {
    return pool
}

function deadline() payable {
    return deadline
}

function slippage() payable {
    return slippage
}

function staking() payable {
    return stakingAddress
}

function stakingToken() payable {
    return stakingTokenAddress
}

function owner() payable {
    return owner
}

function rewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Automate: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Automate: caller is not the owner'
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != this.address:
        revert with 0, 'Automate: change the owner failed'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function info() payable {
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        return stor0
    require ext_code.size(address(delegate.return_data[0]))
    staticcall address(delegate.return_data[0]).0x370158ea with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function paused() payable {
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        return bool(uint8(stor1.field_160))
    if uint8(stor1.field_160):
        return bool(uint8(stor1.field_160))
    require ext_code.size(address(delegate.return_data[0]))
    staticcall address(delegate.return_data[0]).0x5c975abb with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_9742b5c3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        if owner != msg.sender:
            revert with 0, 'Automate::changeProtocolFee: caller is not the protocol owner'
    else:
        require ext_code.size(address(delegate.return_data[0]))
        staticcall address(delegate.return_data[0]).0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'Automate::changeProtocolFee: caller is not the protocol owner'
    stor2 = arg1
    emit 0x3c1d4394: arg1
}

function sub_b9016aa5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == uint16(arg3)
    require arg4 == uint16(arg4)
    if owner:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Automate: caller is not the owner'
    else:
        uint256(stor1.field_0) = tx.origin or Mask(96, 160, uint256(stor1.field_0))
        stor2 = -1
    stakingAddress = address(arg1)
    pool = arg2
    slippage = uint16(arg3)
    deadline = uint16(arg4)
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolInfo(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not bool(ceil32(return_data.size) + 256 <= test266151307()):
        revert with 'NH{q', 65
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[128] == ext_call.return_data[140 len 20]
    stakingTokenAddress = ext_call.return_data[12 len 20]
    require ext_code.size(stakingAddress)
    staticcall stakingAddress.joe() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    rewardTokenAddress = ext_call.return_data[12 len 20]
}

function deposit() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Automate: caller is not the owner'
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, stakingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if ext_call.return_data[0] < -1:
            require ext_code.size(stakingTokenAddress)
            call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args stakingAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stakingTokenAddress)
    if ext_call.return_data[0] != -1:
        call stakingTokenAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args stakingAddress, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingAddress)
    call stakingAddress.deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pool, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund() payable {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Automate: caller is not the owner'
    require ext_code.size(stakingAddress)
    staticcall stakingAddress.userInfo(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args pool, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not bool(ceil32(return_data.size) + 160 <= test266151307()):
        revert with 'NH{q', 65
    require ext_code.size(stakingAddress)
    call stakingAddress.withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pool, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stakingTokenAddress)
    staticcall stakingTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stakingTokenAddress)
    call stakingTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function pause() payable {
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != this.address:
        if owner != msg.sender:
            revert with 0, 'Automate: caller is not the pauser'
    else:
        require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
        delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[12 len 20]
        if this.address == delegate.return_data[12 len 20]:
            require ext_code.size(stor0)
            staticcall stor0.0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x689d13d8ed8ef1027633ba26e7121121cf427434450a529548f19bf175974395
        else:
            require ext_code.size(address(delegate.return_data[0]))
            staticcall address(delegate.return_data[0]).0x370158ea with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x689d13d8ed8ef1027633ba26e7121121cf427434450a529548f19bf175974395
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if owner != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Automate: caller is not the pauser'
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        if uint8(stor1.field_160):
            revert with 0, 'Automate: paused'
    else:
        if uint8(stor1.field_160):
            revert with 0, 'Automate: paused'
        require ext_code.size(address(delegate.return_data[0]))
        staticcall address(delegate.return_data[0]).0x5c975abb with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if ext_call.return_data[0]:
            revert with 0, 'Automate: paused'
    uint8(stor1.field_160) = 1
}

function unpause() payable {
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != this.address:
        if owner != msg.sender:
            revert with 0, 'Automate: caller is not the pauser'
    else:
        require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
        delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
             gas gas_remaining wei
            args this.address
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require delegate.return_data[0] == delegate.return_data[12 len 20]
        if this.address == delegate.return_data[12 len 20]:
            require ext_code.size(stor0)
            staticcall stor0.0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x689d13d8ed8ef1027633ba26e7121121cf427434450a529548f19bf175974395
        else:
            require ext_code.size(address(delegate.return_data[0]))
            staticcall address(delegate.return_data[0]).0x370158ea with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x689d13d8ed8ef1027633ba26e7121121cf427434450a529548f19bf175974395
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if owner != msg.sender:
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Automate: caller is not the pauser'
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        if not uint8(stor1.field_160):
            revert with 0, 'Automate: not paused'
    else:
        if not uint8(stor1.field_160):
            require ext_code.size(address(delegate.return_data[0]))
            staticcall address(delegate.return_data[0]).0x5c975abb with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Automate: not paused'
    uint8(stor1.field_160) = 0
}

function protocolFee() payable {
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if delegate.return_data[12 len 20] != this.address:
        if stor2 < 0:
            require ext_code.size(address(delegate.return_data[0]))
            staticcall address(delegate.return_data[0]).0xb0e21e8a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.implementation(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if this.address == delegate.return_data[12 len 20]:
        if stor2 >= 0:
            if not stor2:
                return 0
            require ext_code.size(stor0)
            staticcall stor0.0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x65c90423fe7c880476633a7e36521740f87199d233dc56eb4ca6643eb76f605f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] <= 0:
                revert with 0, 'Automate: invalid price'
            if stor2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            return (10^18 * stor2 / ext_call.return_data[32])
        require ext_code.size(stor0)
        staticcall stor0.0xbd02d0f5 with:
                gas gas_remaining wei
               args 0xa93d95f96a5de25d7a41ddf1f5e8d45cfc929c4838163cf011dab4043a4a40d5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(stor0)
        staticcall stor0.0x21f8a721 with:
                gas gas_remaining wei
               args 0x65c90423fe7c880476633a7e36521740f87199d233dc56eb4ca6643eb76f605f
    else:
        require ext_code.size(address(delegate.return_data[0]))
        staticcall address(delegate.return_data[0]).0x370158ea with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if stor2 >= 0:
            if not stor2:
                return 0
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x21f8a721 with:
                    gas gas_remaining wei
                   args 0x65c90423fe7c880476633a7e36521740f87199d233dc56eb4ca6643eb76f605f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if ext_call.return_data[32] <= 0:
                revert with 0, 'Automate: invalid price'
            if stor2 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if not ext_call.return_data[32]:
                revert with 'NH{q', 18
            return (10^18 * stor2 / ext_call.return_data[32])
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0xbd02d0f5 with:
                gas gas_remaining wei
               args 0xa93d95f96a5de25d7a41ddf1f5e8d45cfc929c4838163cf011dab4043a4a40d5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x21f8a721 with:
                gas gas_remaining wei
               args 0x65c90423fe7c880476633a7e36521740f87199d233dc56eb4ca6643eb76f605f
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'Automate: invalid price'
    if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if not ext_call.return_data[32]:
        revert with 'NH{q', 18
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[32])
}



}
