contract main {




// =====================  Runtime code  =====================


uint8 contractStatus; offset 160
address owner;
address stor1;
address stor2;
address sub_b4b58d4bAddress;
address sub_9436dc71Address;

function owner() {
    return owner
}

function sub_9436dc71(?) {
    return sub_9436dc71Address
}

function sub_b4b58d4b(?) {
    return sub_b4b58d4bAddress
}

function getContractStatus() {
    return contractStatus
}

function _fallback() payable {
    emit Fallback(msg.sender, msg.value);
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_11f706ec(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    contractStatus = uint8(arg1)
    emit 0x71a66a33: msg.sender, uint8(arg1)
}

function sub_59cb5bf2(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_b4b58d4bAddress = address(arg1)
    stor1 = sub_b4b58d4bAddress
    emit 0x8b1406cd: msg.sender, sub_b4b58d4bAddress
}

function sub_7f27314b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if contractStatus:
        revert with 0, 'Contract Paused'
    sub_9436dc71Address = address(arg1)
    stor2 = sub_9436dc71Address
    emit 0x779ad387: msg.sender, sub_9436dc71Address
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAll(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if eth.balance(this.address) > 0:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0xae7bb419: msg.sender, ext_call.return_data[0], eth.balance(this.address)
}

function getAmountOut(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg1 != sub_b4b58d4bAddress:
        revert with 0, 'Invalid input token address.'
    if arg2 != sub_9436dc71Address:
        revert with 0, 'Invalid output token address.'
    if arg3 <= 0:
        revert with 0, 'Invalid amount.'
    staticcall stor2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 / 10^18 and 1 > -1 / arg3 / 10^18:
            revert with 'NH{q', 17
        return (arg3 / 10^18)
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if 10^ext_call.return_data[31 len 1] > -1:
            revert with 'NH{q', 17
        if arg3 / 10^18 and 10^ext_call.return_data[31 len 1] > -1 / arg3 / 10^18:
            revert with 'NH{q', 17
        return (arg3 / 10^18 * 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 'NH{q', 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = t * s
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 'NH{q', 17
    if arg3 / 10^18 and t * s > -1 / arg3 / 10^18:
        revert with 'NH{q', 17
    return (arg3 / 10^18 * t * s)
}

function swap(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if contractStatus:
        revert with 0, 'Contract Paused'
    if arg1 != sub_b4b58d4bAddress:
        revert with 0, 'Invalid input token address.'
    if arg2 != sub_9436dc71Address:
        revert with 0, 'Invalid output token address.'
    if arg3 <= 0:
        revert with 0, 'Invalid amount.'
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg3:
        revert with 'NH{q', 17
    if ext_call.return_data[0] - arg3 < 0:
        revert with 0, 'Insufficient presaled tokens.'
    staticcall stor2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if arg3 / 10^18 and 1 > -1 / arg3 / 10^18:
            revert with 'NH{q', 17
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg3 / 10^18:
            revert with 'NH{q', 17
        if ext_call.return_data[0] - (arg3 / 10^18) <= 0:
            revert with 0, 'Sorry, insufficient real tokens.'
        call stor1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor2.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg3 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call stor2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg3 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        emit Swapped(address(arg1), address(arg2), arg3, arg3 / 10^18);
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if 10^ext_call.return_data[31 len 1] > -1:
                revert with 'NH{q', 17
            if arg3 / 10^18 and 10^ext_call.return_data[31 len 1] > -1 / arg3 / 10^18:
                revert with 'NH{q', 17
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 / 10^18 * 10^uint8(ext_call.return_data[0]):
                revert with 'NH{q', 17
            if ext_call.return_data[0] - (arg3 / 10^18 * 10^uint8(ext_call.return_data[0])) <= 0:
                revert with 0, 'Sorry, insufficient real tokens.'
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg3 / 10^18 * 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 / 10^18 * 10^uint8(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Swapped(address(arg1), address(arg2), arg3, arg3 / 10^18 * 10^uint8(ext_call.return_data[0]));
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg3 / 10^18 and t * s > -1 / arg3 / 10^18:
                revert with 'NH{q', 17
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg3 / 10^18 * t * s:
                revert with 'NH{q', 17
            if ext_call.return_data[0] - (arg3 / 10^18 * t * s) <= 0:
                revert with 0, 'Sorry, insufficient real tokens.'
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor2.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg3 / 10^18 * t * s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call stor2.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg3 / 10^18 * t * s
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            emit Swapped(address(arg1), address(arg2), arg3, arg3 / 10^18 * t * s);
}



}
