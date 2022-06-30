contract main {




// =====================  Runtime code  =====================


#
#  - sub_613d25bb(?)
#
const sub_9b543aab(?) = 1000000000 * 10^18

const sub_f1a640f8(?) = 8

const MAX_PRICE = test266151307()


address owner;
address underlyingAddress;
address oracleAddress;
uint256 lastPrice;
uint256 stor104;
array of struct stor105;
array of struct stor106;
mapping of uint256 stor107;
mapping of uint256 allowance;
uint256 storC8CC;

function lastPrice() payable {
    return lastPrice
}

function underlying() payable {
    return underlyingAddress
}

function oracle() payable {
    return oracleAddress
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xfe8c5be1: arg2, msg.sender, arg1
    return 1
}

function scaledBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        return (stor107[address(arg1)] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
    else:
        return 0
}

function balanceOfUnderlying(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1:
        return (stor107[address(arg1)] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
    else:
        return 0
}

function totalUnderlying() payable {
    if 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 < storC8CC:
        revert with 0, 17
    return (-storC8CC - 564039457584007913129639936 / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function scaledTotalSupply() payable {
    if 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 < storC8CC:
        revert with 0, 17
    return (-storC8CC - 564039457584007913129639936 / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xfe8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function decimals() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return ext_call.return_data[31 len 1]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        if allowance[msg.sender][address(arg1)] < arg2:
            revert with 0, 17
        allowance[msg.sender][address(arg1)] -= arg2
    emit 0xfe8c5be1: allowance[msg.sender][address(arg1)], msg.sender, arg1
    return 1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0]:
                revert with 0, 18
            return (stor107[address(arg1)] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0])
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    return (stor107[address(arg1)] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function wrapperToUnderlying(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if not ext_call.return_data[0]:
                revert with 0, 18
            if arg1 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0] > -1 / arg1:
                revert with 0, 17
            return (arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
    if not lastPrice:
        revert with 0, 18
    if arg1 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg1:
        revert with 0, 17
    return (arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function totalSupply() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 < storC8CC:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0]:
                revert with 0, 18
            return (-storC8CC - 564039457584007913129639936 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0])
    if 0xfffffffffffffffffffffffffffffffffffffffffe2d6fffbc6a148440000000 < storC8CC:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    return (-storC8CC - 564039457584007913129639936 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function underlyingToWrapper(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if arg1 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg1:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0]:
                revert with 0, 18
            return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / ext_call.return_data[0])
    if arg1 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg1:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function rebase() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
}

function updateOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if not ext_call.return_data[32]:
        revert with 0, 'ButtonToken: unable to fetch data from oracle'
    if not ext_call.return_data[32]:
        revert with 0, 'ButtonToken: unable to fetch data from oracle'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'ButtonToken: unable to fetch data from oracle'
    emit OracleUpdated(oracleAddress);
    if ext_call.return_data[0] > 0:
        if ext_call.return_data[0] <= test266151307():
            lastPrice = ext_call.return_data[0]
            if stor104 == -1:
                revert with 0, 17
            stor104++
            emit Rebase(ext_call.return_data[0], stor104);
        else:
            lastPrice = test266151307()
            if stor104 == -1:
                revert with 0, 17
            stor104++
            emit Rebase(test266151307(), stor104);
    else:
        if lastPrice <= test266151307():
            if stor104 == -1:
                revert with 0, 17
            stor104++
            emit Rebase(lastPrice, stor104);
        else:
            lastPrice = test266151307()
            if stor104 == -1:
                revert with 0, 17
            stor104++
            emit Rebase(test266151307(), stor104);
}

function transferAll(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient zero address'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient token address'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if stor107[address(msg.sender)] < stor107[msg.sender]:
        revert with 0, 17
    stor107[address(msg.sender)] -= stor107[msg.sender]
    if stor107[address(arg1)] > !stor107[msg.sender]:
        revert with 0, 17
    stor107[address(arg1)] += stor107[msg.sender]
    emit Transfer((stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, arg1);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient zero address'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient token address'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if arg2 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg2:
        revert with 0, 17
    if stor107[address(msg.sender)] < arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[address(msg.sender)] += -1 * arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[address(arg1)] > !(arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[address(arg1)] += arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg2, msg.sender, arg1);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient zero address'
    if this.address == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient token address'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= arg3
    emit 0xfe8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
    if not lastPrice:
        revert with 0, 18
    if arg3 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg3:
        revert with 0, 17
    if stor107[address(arg1)] < arg3 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[address(arg1)] += -1 * arg3 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[address(arg2)] > !(arg3 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[address(arg2)] += arg3 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg3, arg1, arg2);
    if not stor107[address(arg1)]:
        stor107[address(arg1)] = 0
    return 1
}

function transferAllFrom(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient zero address'
    if this.address == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ButtonToken: recipient token address'
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if allowance[address(arg1)][msg.sender] < stor107[address(arg1)] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    allowance[address(arg1)][msg.sender] -= stor107[address(arg1)] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit 0xfe8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
    if stor107[address(arg1)] < stor107[address(arg1)]:
        revert with 0, 17
    stor107[address(arg1)] = 0
    if stor107[address(arg2)] > !stor107[address(arg1)]:
        revert with 0, 17
    stor107[address(arg2)] += stor107[address(arg1)]
    emit Transfer((stor107[address(arg1)] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), arg1, arg2);
    if not stor107[address(arg1)]:
        stor107[address(arg1)] = 0
    return 1
}

function name() payable {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 0, 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[(uint255(stor105.length) * 0.5) + ceil32(uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 0, 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[stor105.length.field_1 + ceil32(stor105.length.field_1) + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function symbol() payable {
    if bool(stor106.length):
        if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor106.length):
            if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor106.length):
                if 31 < uint255(stor106.length) * 0.5:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor106.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * stor106.length.field_8
        else:
            if bool(stor106.length) == stor106.length.field_1 < 32:
                revert with 0, 34
            if stor106.length.field_1:
                if 31 < stor106.length.field_1:
                    mem[128] = uint256(stor106.field_0)
                    idx = 128
                    s = 0
                    while stor106.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor106[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)])
                mem[128] = 256 * stor106.length.field_8
        mem[ceil32(uint255(stor106.length) * 0.5) + 192 len ceil32(uint255(stor106.length) * 0.5)] = mem[128 len ceil32(uint255(stor106.length) * 0.5)]
        if ceil32(uint255(stor106.length) * 0.5) > uint255(stor106.length) * 0.5:
            mem[(uint255(stor106.length) * 0.5) + ceil32(uint255(stor106.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor106.length), data=mem[128 len ceil32(uint255(stor106.length) * 0.5)], mem[(2 * ceil32(uint255(stor106.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor106.length) * 0.5)]), 
    if bool(stor106.length) == stor106.length.field_1 < 32:
        revert with 0, 34
    if bool(stor106.length):
        if bool(stor106.length) == uint255(stor106.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor106.length):
            if 31 < uint255(stor106.length) * 0.5:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while (uint255(stor106.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    else:
        if bool(stor106.length) == stor106.length.field_1 < 32:
            revert with 0, 34
        if stor106.length.field_1:
            if 31 < stor106.length.field_1:
                mem[128] = uint256(stor106.field_0)
                idx = 128
                s = 0
                while stor106.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor106[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)])
            mem[128] = 256 * stor106.length.field_8
    mem[ceil32(stor106.length.field_1) + 192 len ceil32(stor106.length.field_1)] = mem[128 len ceil32(stor106.length.field_1)]
    if ceil32(stor106.length.field_1) > stor106.length.field_1:
        mem[stor106.length.field_1 + ceil32(stor106.length.field_1) + 192] = 0
    return Array(len=stor106.length % 128, data=mem[128 len ceil32(stor106.length.field_1)], mem[(2 * ceil32(stor106.length.field_1)) + 192 len 2 * ceil32(stor106.length.field_1)]), 
}

function burnAll() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < stor107[msg.sender]:
        revert with 0, 17
    stor107[address(msg.sender)] -= stor107[msg.sender]
    if stor107[0] > !stor107[msg.sender]:
        revert with 0, 17
    stor107[0] += stor107[msg.sender]
    emit Transfer((stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function withdrawAll() payable {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < stor107[msg.sender]:
        revert with 0, 17
    stor107[address(msg.sender)] -= stor107[msg.sender]
    if stor107[0] > !stor107[msg.sender]:
        revert with 0, 17
    stor107[0] += stor107[msg.sender]
    emit Transfer((stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function burnAllTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < stor107[msg.sender]:
        revert with 0, 17
    stor107[address(msg.sender)] -= stor107[msg.sender]
    if stor107[0] > !stor107[msg.sender]:
        revert with 0, 17
    stor107[0] += stor107[msg.sender]
    emit Transfer((stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function withdrawAllTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < stor107[msg.sender]:
        revert with 0, 17
    stor107[address(msg.sender)] -= stor107[msg.sender]
    if stor107[0] > !stor107[msg.sender]:
        revert with 0, 17
    stor107[0] += stor107[msg.sender]
    emit Transfer((stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, stor107[msg.sender] / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (stor107[msg.sender] / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if arg1 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg1:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1:
        revert with 0, 17
    stor107[address(msg.sender)] += -115792089237316195423570985008687907853269984665640 * arg1
    if stor107[0] > !(0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1):
        revert with 0, 17
    stor107[0] += 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1
    emit Transfer((0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function withdrawTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if arg2 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg2:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2:
        revert with 0, 17
    stor107[address(msg.sender)] += -115792089237316195423570985008687907853269984665640 * arg2
    if stor107[0] > !(0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2):
        revert with 0, 17
    stor107[0] += 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2
    emit Transfer((0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if arg1 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg1:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to mint'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor107[0] < 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1:
        revert with 0, 17
    stor107[0] += -115792089237316195423570985008687907853269984665640 * arg1
    if stor107[address(msg.sender)] > !(0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1):
        revert with 0, 17
    stor107[address(msg.sender)] += 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1
    emit Transfer((0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), 0, msg.sender);
    if not stor107[0]:
        stor107[0] = 0
    return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg1 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function depositFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if arg2 and 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 > -1 / arg2:
        revert with 0, 17
    if not lastPrice:
        revert with 0, 18
    if not 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 18
    if 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice <= 0:
        revert with 0, 'ButtonToken: too few button tokens to mint'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[ceil32(return_data.size) + 392] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor107[0] < 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2:
        revert with 0, 17
    stor107[0] += -115792089237316195423570985008687907853269984665640 * arg2
    if stor107[address(arg1)] > !(0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2):
        revert with 0, 17
    stor107[address(arg1)] += 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2
    emit Transfer((0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice), 0, arg1);
    if not stor107[0]:
        stor107[0] = 0
    return (0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028 * arg2 / 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice)
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if arg1 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg1:
        revert with 0, 17
    if arg1 <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[address(msg.sender)] += -1 * arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[0] > !(arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[0] += arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg1, msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function burnTo(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if arg2 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg2:
        revert with 0, 17
    if arg2 <= 0:
        revert with 0, 'ButtonToken: too few button tokens to burn'
    if stor107[address(msg.sender)] < arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[address(msg.sender)] += -1 * arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[0] > !(arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[0] += arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg2, msg.sender, 0);
    if not stor107[address(msg.sender)]:
        stor107[address(msg.sender)] = 0
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 328] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return (arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if arg1 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg1:
        revert with 0, 17
    if arg1 <= 0:
        revert with 0, 'ButtonToken: too few button tokens to mint'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 392] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor107[0] < arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[0] += -1 * arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[address(msg.sender)] > !(arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[address(msg.sender)] += arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg1, 0, msg.sender);
    if not stor107[0]:
        stor107[0] = 0
    return (arg1 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}

function mintFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getData() with:
            gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] == bool(ext_call.return_data[32])
    if ext_call.return_data[32]:
        if ext_call.return_data[0] > 0:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if ext_call.return_data[0] <= test266151307():
                        lastPrice = ext_call.return_data[0]
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(ext_call.return_data[0], stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
        else:
            if ext_call.return_data[32]:
                if ext_call.return_data[0] > 0:
                    if lastPrice <= test266151307():
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(lastPrice, stor104);
                    else:
                        lastPrice = test266151307()
                        if stor104 == -1:
                            revert with 0, 17
                        stor104++
                        emit Rebase(test266151307(), stor104);
    if not lastPrice:
        revert with 0, 18
    if arg2 and 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice > -1 / arg2:
        revert with 0, 17
    if arg2 <= 0:
        revert with 0, 'ButtonToken: too few button tokens to mint'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0
    mem[ceil32(return_data.size) + 392] = 0
    call underlyingAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require ext_call.return_data[32] == bool(ext_call.return_data[32])
            if not ext_call.return_data[32]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor107[0] < arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice:
        revert with 0, 17
    stor107[0] += -1 * arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    if stor107[address(arg1)] > !(arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice):
        revert with 0, 17
    stor107[address(arg1)] += arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice
    emit Transfer(arg2, 0, arg1);
    if not stor107[0]:
        stor107[0] = 0
    return (arg2 * 0x1d83c94fb6d2ac34a5663d3c7a0d865ca3c4ca40e0b4b2800 / lastPrice / 0x4f3a68dbc8f03f243baf513267aa9a3ee524f8e028)
}



}
