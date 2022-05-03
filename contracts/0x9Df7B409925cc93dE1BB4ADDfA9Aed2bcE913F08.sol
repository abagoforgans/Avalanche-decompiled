contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function nope(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.nope(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function hope(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    call arg1.hope(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function give(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.give(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function quit(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.quit(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function shift(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.shift(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function enter(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.enter(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function urnAllow(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.urnAllow(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function frob(address arg1, uint256 arg2, int256 arg3, int256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
         gas gas_remaining wei
        args arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function flux(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function move(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.move(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cdpAllow(address arg1, uint256 arg2, address arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    call arg1.cdpAllow(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function open(address arg1, bytes32 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    call arg1.open(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function daiJoin_join(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.dai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function giveToProxy(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.proxies(address arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        if ext_code.size(arg4):
            revert with 0, 'Dst-is-a-contract'
        require ext_code.size(arg1)
        call arg1.build(address arg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).owner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != arg4:
            if ext_code.size(arg4):
                revert with 0, 'Dst-is-a-contract'
            require ext_code.size(arg1)
            call arg1.build(address arg1) with:
                 gas gas_remaining wei
                args arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.give(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg3, address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exitGem(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg3, address(this.address), 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg4 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg4:
            revert with 0, 'mul-overflow'
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg3, address(this.address), arg4 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    if not arg5:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[31 len 1] != 8:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args arg4, 1, 1
        else:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg5)
        staticcall arg5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg5)
        call arg5.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function freeGem(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg3, 0, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg3, address(this.address), 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg4 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg4:
            revert with 0, 'mul-overflow'
        if arg4 * 10^(-ext_call.return_data[0] + 18) < 0:
            revert with 0, 'int-overflow'
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg3, -1 * arg4 * 10^(-ext_call.return_data[0] + 18), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg3, address(this.address), arg4 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    if not arg5:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[31 len 1] != 8:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args arg4, 1, 1
        else:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg5)
        staticcall arg5.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg5)
        call arg5.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function draw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).dai(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
        revert with 0, 'mul-overflow'
    if ext_call.return_data[0] >= 1000000000 * 10^18 * arg5:
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg4, 0, 0
    else:
        if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
            revert with 0, 'mul-overflow'
        if (1000000000 * 10^18 * arg5) - ext_call.return_data[0] > 1000000000 * 10^18 * arg5:
            revert with 0, 'sub-overflow'
        require ext_call.return_data[0]
        if (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0] < 0:
            revert with 0, 'int-overflow'
        if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
            revert with 0, 'mul-overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(arg1)
            if 0 < 1000000000 * 10^18 * arg5:
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg4, 0, ((1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg4, 0, (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0]
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg1)
            if (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 1000000000 * 10^18 * arg5:
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg4, 0, ((1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg4, 0, (1000000000 * 10^18 * arg5) - ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1000000000 * 10^18 * arg5 / 1000000000 * 10^18 != arg5:
        revert with 0, 'mul-overflow'
    require ext_code.size(arg1)
    call arg1.move(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg4, address(this.address), 1000000000 * 10^18 * arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).can(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).hope(address arg1) with:
             gas gas_remaining wei
            args arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg3)
    call arg3.exit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function gemJoin_join(address arg1, address arg2, uint256 arg3, bool arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    if arg4:
        staticcall arg1.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not arg5:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalReserve() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg5)
                call arg5.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg5)
                call arg5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 1 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if arg3 * ext_call.return_data[0] / ext_call.return_data[0] != arg3:
                    revert with 0, 'mul-overflow'
                if (arg3 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 < arg3 * ext_call.return_data[0]:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg5)
                call arg5.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg3 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg5)
                call arg5.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (arg3 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args (arg3 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((arg3 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg1.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function lockGem(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(arg2)
    if arg5:
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not arg6:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalReserve() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg6)
                call arg6.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg6)
                call arg6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 1 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
                    revert with 0, 'mul-overflow'
                if (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 < arg4 * ext_call.return_data[0]:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg6)
                call arg6.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg6)
                call arg6.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg2.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], address(ext_call.return_data[0]), address(this.address), this.address, 0, 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg4 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg4:
            revert with 0, 'mul-overflow'
        if arg4 * 10^(-ext_call.return_data[0] + 18) < 0:
            revert with 0, 'int-overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], address(ext_call.return_data[0]), address(this.address), this.address, arg4 * 10^(-ext_call.return_data[0] + 18), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeLockGem(address arg1, address arg2, uint256 arg3, uint256 arg4, bool arg5, address arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg6:
        revert with 0, 'owner-missmatch'
    require ext_code.size(arg2)
    if arg5:
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not arg7:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalReserve() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg7)
                call arg7.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                call arg7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 1 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if arg4 * ext_call.return_data[0] / ext_call.return_data[0] != arg4:
                    revert with 0, 'mul-overflow'
                if (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 < arg4 * ext_call.return_data[0]:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg7)
                call arg7.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg7)
                call arg7.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args (arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((arg4 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg2.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], address(ext_call.return_data[0]), address(this.address), this.address, 0, 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg4 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg4:
            revert with 0, 'mul-overflow'
        if arg4 * 10^(-ext_call.return_data[0] + 18) < 0:
            revert with 0, 'int-overflow'
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[28 len 4], address(ext_call.return_data[0]), address(this.address), this.address, arg4 * 10^(-ext_call.return_data[0] + 18), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wipeAndFreeGem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    staticcall arg3.dai() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    call arg3.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(arg1)
        staticcall arg1.vat() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.vat() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] / ext_call.return_data[32] < 0:
            revert with 0, 'int-overflow'
        if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg4, 0, -ext_call.return_data[0] / ext_call.return_data[32]
        else:
            if ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg4, 0, -ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg4, address(this.address), 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg5 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg5:
            revert with 0, 'mul-overflow'
        if arg5 * 10^(-ext_call.return_data[0] + 18) < 0:
            revert with 0, 'int-overflow'
        require ext_code.size(arg1)
        staticcall arg1.vat() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        staticcall arg1.vat() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] / ext_call.return_data[32] < 0:
            revert with 0, 'int-overflow'
        if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg4, -1 * arg5 * 10^(-ext_call.return_data[0] + 18), -ext_call.return_data[0] / ext_call.return_data[32]
        else:
            if ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg4, -1 * arg5 * 10^(-ext_call.return_data[0] + 18), -ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg4, address(this.address), arg5 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    if not arg7:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[31 len 1] != 8:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args arg5, 1, 1
        else:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg7)
        staticcall arg7.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg7)
        call arg7.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function wipe(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(arg2)
        staticcall arg2.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.join(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] / ext_call.return_data[32] < 0:
            revert with 0, 'int-overflow'
        if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[0] / ext_call.return_data[32]
        else:
            if ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[32]
    else:
        require ext_code.size(arg1)
        staticcall arg1.cdpCan(address arg1, uint256 arg2, address arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        if ext_call.return_data[0] != 1:
            call arg2.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32]
            if 1000000000 * 10^18 * arg4 / ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            if 1000000000 * 10^18 * arg4 / ext_call.return_data[32] <= ext_call.return_data[32]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -1000000000 * 10^18 * arg4 / ext_call.return_data[32]
            else:
                if ext_call.return_data[32] < 0:
                    revert with 0, 'int-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -ext_call.return_data[32]
        else:
            call arg2.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32]
            if ext_call.return_data[0] / ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
                require ext_code.size(arg1)
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg3, 0, -ext_call.return_data[0] / ext_call.return_data[32]
            else:
                if ext_call.return_data[32] < 0:
                    revert with 0, 'int-overflow'
                require ext_code.size(arg1)
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg3, 0, -ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeWipe(address arg1, address arg2, uint256 arg3, uint256 arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg5:
        revert with 0, 'owner-missmatch'
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(arg2)
        staticcall arg2.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.join(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_call.return_data[32]
        if ext_call.return_data[0] / ext_call.return_data[32] < 0:
            revert with 0, 'int-overflow'
        if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[0] / ext_call.return_data[32]
        else:
            if ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[32]
    else:
        require ext_code.size(arg1)
        staticcall arg1.cdpCan(address arg1, uint256 arg2, address arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        staticcall arg2.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        if ext_call.return_data[0] != 1:
            call arg2.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32]
            if 1000000000 * 10^18 * arg4 / ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            if 1000000000 * 10^18 * arg4 / ext_call.return_data[32] <= ext_call.return_data[32]:
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -1000000000 * 10^18 * arg4 / ext_call.return_data[32]
            else:
                if ext_call.return_data[32] < 0:
                    revert with 0, 'int-overflow'
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                     gas gas_remaining wei
                    args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -ext_call.return_data[32]
        else:
            call arg2.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[32]
            if ext_call.return_data[0] / ext_call.return_data[32] < 0:
                revert with 0, 'int-overflow'
            if ext_call.return_data[0] / ext_call.return_data[32] <= ext_call.return_data[32]:
                require ext_code.size(arg1)
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg3, 0, -ext_call.return_data[0] / ext_call.return_data[32]
            else:
                if ext_call.return_data[32] < 0:
                    revert with 0, 'int-overflow'
                require ext_code.size(arg1)
                call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                     gas gas_remaining wei
                    args arg3, 0, -ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wipeAllAndFreeGem(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).dai(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[32]:
        if -ext_call.return_data[0] > 0:
            revert with 0, 'sub-overflow'
        if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
            revert with 0, 'mul-overflow'
        require ext_code.size(arg3)
        staticcall arg3.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            call arg3.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
        else:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), -ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            call arg3.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), -ext_call.return_data[0] / 1000000000 * 10^18
    else:
        require ext_call.return_data[32]
        if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
            revert with 0, 'mul-overflow'
        if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
            revert with 0, 'sub-overflow'
        if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
            revert with 0, 'mul-overflow'
        require ext_code.size(arg3)
        staticcall arg3.dai() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            call arg3.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
        else:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg3), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg3)
            call arg3.join(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    staticcall arg2.dec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not 10^(-ext_call.return_data[0] + 18):
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg4, 0, -ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg4, address(this.address), 0
    else:
        require 10^(-ext_call.return_data[0] + 18)
        if arg5 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg5:
            revert with 0, 'mul-overflow'
        if arg5 * 10^(-ext_call.return_data[0] + 18) < 0:
            revert with 0, 'int-overflow'
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg4, -1 * arg5 * 10^(-ext_call.return_data[0] + 18), -ext_call.return_data[32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.flux(uint256 arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args arg4, address(this.address), arg5 * 10^(-ext_call.return_data[0] + 18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    if not arg6:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.exit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg2)
        staticcall arg2.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[31 len 1] != 8:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1, uint256 arg2, bool arg3) with:
                 gas gas_remaining wei
                args arg5, 1, 1
        else:
            call address(ext_call.return_data[0]).withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg6)
        staticcall arg6.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg6)
        call arg6.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function lockGemAndDraw(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6, uint256 arg7, bool arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    if arg8:
        staticcall arg3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not arg9:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalReserve() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg9)
                call arg9.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg9)
                call arg9.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 1 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if arg6 * ext_call.return_data[0] / ext_call.return_data[0] != arg6:
                    revert with 0, 'mul-overflow'
                if (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 < arg6 * ext_call.return_data[0]:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg9)
                call arg9.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg9)
                call arg9.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg3.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).dai(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
        revert with 0, 'mul-overflow'
    if ext_call.return_data[0] >= 1000000000 * 10^18 * arg7:
        require ext_code.size(arg3)
        staticcall arg3.dec() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 10^(-ext_call.return_data[0] + 18):
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg5, 0, 0
        else:
            require 10^(-ext_call.return_data[0] + 18)
            if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                revert with 0, 'mul-overflow'
            if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg5, arg6 * 10^(-ext_call.return_data[0] + 18), 0
    else:
        if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
            revert with 0, 'mul-overflow'
        if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] > 1000000000 * 10^18 * arg7:
            revert with 0, 'sub-overflow'
        require ext_call.return_data[0]
        if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] < 0:
            revert with 0, 'int-overflow'
        if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
            revert with 0, 'mul-overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(arg3)
            staticcall arg3.dec() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < 1000000000 * 10^18 * arg7:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, 0, ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, arg6 * 10^(-ext_call.return_data[0] + 18), ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, 0, (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, arg6 * 10^(-ext_call.return_data[0] + 18), (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg3)
            staticcall arg3.dec() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 1000000000 * 10^18 * arg7:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, 0, ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, arg6 * 10^(-ext_call.return_data[0] + 18), ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, 0, (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args arg5, arg6 * 10^(-ext_call.return_data[0] + 18), (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
        revert with 0, 'mul-overflow'
    require ext_code.size(arg1)
    call arg1.move(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args arg5, address(this.address), 1000000000 * 10^18 * arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).can(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).hope(address arg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg4)
    call arg4.exit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function openLockGemAndDraw(address arg1, address arg2, address arg3, address arg4, bytes32 arg5, uint256 arg6, uint256 arg7, bool arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require ext_code.size(arg1)
    call arg1.open(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args arg5, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg3)
    if arg8:
        staticcall arg3.gem() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        if not arg9:
            call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg6
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
        else:
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).gulp() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).totalReserve() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if ext_call.return_data[0] - 1 < 0:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg9)
                call arg9.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg9)
                call arg9.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] - 1 / ext_call.return_data[0])
            else:
                require ext_call.return_data[0]
                if arg6 * ext_call.return_data[0] / ext_call.return_data[0] != arg6:
                    revert with 0, 'mul-overflow'
                if (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 < arg6 * ext_call.return_data[0]:
                    revert with 0, 'add-overflow'
                require ext_call.return_data[0]
                require ext_code.size(arg9)
                call arg9.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg9)
                call arg9.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).decimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if ext_call.return_data[31 len 1] != 8:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1, uint256 arg2, bool arg3) with:
                         gas gas_remaining wei
                        args (arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0], 1, 0
                else:
                    call address(ext_call.return_data[0]).deposit(uint256 arg1) with:
                         gas gas_remaining wei
                        args ((arg6 * ext_call.return_data[0]) + ext_call.return_data[0] - 1 / ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg6
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    call arg3.join(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.drip(bytes32 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).dai(address arg1) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
        revert with 0, 'mul-overflow'
    if ext_call.return_data[0] >= 1000000000 * 10^18 * arg7:
        require ext_code.size(arg3)
        staticcall arg3.dec() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 10^(-ext_call.return_data[0] + 18):
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], 0, 0
        else:
            require 10^(-ext_call.return_data[0] + 18)
            if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                revert with 0, 'mul-overflow'
            if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                revert with 0, 'int-overflow'
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args ext_call.return_data[0], arg6 * 10^(-ext_call.return_data[0] + 18), 0
    else:
        if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
            revert with 0, 'mul-overflow'
        if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] > 1000000000 * 10^18 * arg7:
            revert with 0, 'sub-overflow'
        require ext_call.return_data[0]
        if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] < 0:
            revert with 0, 'int-overflow'
        if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
            revert with 0, 'mul-overflow'
        if not ext_call.return_data[0]:
            require ext_code.size(arg3)
            staticcall arg3.dec() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 < 1000000000 * 10^18 * arg7:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg6 * 10^(-ext_call.return_data[0] + 18), ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg6 * 10^(-ext_call.return_data[0] + 18), (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
        else:
            require ext_call.return_data[0]
            if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg3)
            staticcall arg3.dec() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[0] < 1000000000 * 10^18 * arg7:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg6 * 10^(-ext_call.return_data[0] + 18), ((1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]) + 1
            else:
                if not 10^(-ext_call.return_data[0] + 18):
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
                else:
                    require 10^(-ext_call.return_data[0] + 18)
                    if arg6 * 10^(-ext_call.return_data[0] + 18) / 10^(-ext_call.return_data[0] + 18) != arg6:
                        revert with 0, 'mul-overflow'
                    if arg6 * 10^(-ext_call.return_data[0] + 18) < 0:
                        revert with 0, 'int-overflow'
                    require ext_code.size(arg1)
                    call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], arg6 * 10^(-ext_call.return_data[0] + 18), (1000000000 * 10^18 * arg7) - ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1000000000 * 10^18 * arg7 / 1000000000 * 10^18 != arg7:
        revert with 0, 'mul-overflow'
    require ext_code.size(arg1)
    call arg1.move(uint256 arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args ext_call.return_data[0], address(this.address), 1000000000 * 10^18 * arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).can(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).hope(address arg1) with:
             gas gas_remaining wei
            args arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg4)
    call arg4.exit(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg7
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function wipeAll(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[32]:
            if -ext_call.return_data[0] > 0:
                revert with 0, 'sub-overflow'
            if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.dai() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
            else:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), -ext_call.return_data[0] / 1000000000 * 10^18
        else:
            require ext_call.return_data[32]
            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                revert with 0, 'mul-overflow'
            if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                revert with 0, 'sub-overflow'
            if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.dai() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
            else:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg3, 0, -ext_call.return_data[32]
    else:
        require ext_code.size(arg1)
        staticcall arg1.cdpCan(address arg1, uint256 arg2, address arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0] != 1:
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                if -ext_call.return_data[0] > 0:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
            else:
                require ext_call.return_data[32]
                if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                    revert with 0, 'mul-overflow'
                if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -ext_call.return_data[32]
        else:
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                if -ext_call.return_data[0] > 0:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), -ext_call.return_data[0] / 1000000000 * 10^18
            else:
                require ext_call.return_data[32]
                if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                    revert with 0, 'mul-overflow'
                if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function safeWipeAll(address arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg4:
        revert with 0, 'owner-missmatch'
    require ext_code.size(arg1)
    staticcall arg1.vat() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.urns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.ilks(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(arg1)
    staticcall arg1.owns(uint256 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[32]:
            if -ext_call.return_data[0] > 0:
                revert with 0, 'sub-overflow'
            if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.dai() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
            else:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), -ext_call.return_data[0] / 1000000000 * 10^18
        else:
            require ext_call.return_data[32]
            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                revert with 0, 'mul-overflow'
            if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                revert with 0, 'sub-overflow'
            if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                revert with 0, 'mul-overflow'
            require ext_code.size(arg2)
            staticcall arg2.dai() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
            else:
                call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg2)
                call arg2.join(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
             gas gas_remaining wei
            args arg3, 0, -ext_call.return_data[32]
    else:
        require ext_code.size(arg1)
        staticcall arg1.cdpCan(address arg1, uint256 arg2, address arg3) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), arg3, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).ilks(bytes32 arg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).urns(bytes32 arg1, address arg2) with:
                gas gas_remaining wei
               args ext_call.return_data[0], address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(address(ext_call.return_data[0]))
        if ext_call.return_data[0] != 1:
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                if -ext_call.return_data[0] > 0:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
            else:
                require ext_call.return_data[32]
                if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                    revert with 0, 'mul-overflow'
                if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).frob(bytes32 arg1, address arg2, address arg3, address arg4, int256 arg5, int256 arg6) with:
                 gas gas_remaining wei
                args 0, ext_call.return_data[32], 0, address(this.address), address(this.address), 0, -ext_call.return_data[32]
        else:
            staticcall address(ext_call.return_data[0]).dai(address arg1) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                if -ext_call.return_data[0] > 0:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != -ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * -ext_call.return_data[0] / 1000000000 * 10^18 < -ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (-ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), -ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), -ext_call.return_data[0] / 1000000000 * 10^18
            else:
                require ext_call.return_data[32]
                if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                    revert with 0, 'mul-overflow'
                if (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] > ext_call.return_data[32] * ext_call.return_data[32]:
                    revert with 0, 'sub-overflow'
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 / 1000000000 * 10^18 != (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18:
                    revert with 0, 'mul-overflow'
                require ext_code.size(arg2)
                staticcall arg2.dai() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if 1000000000 * 10^18 * (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18 < (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0]:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), ((ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18) + 1
                else:
                    call address(ext_call.return_data[0]).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg2), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg2)
                    call arg2.join(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), (ext_call.return_data[32] * ext_call.return_data[32]) - ext_call.return_data[0] / 1000000000 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            call arg1.frob(uint256 arg1, int256 arg2, int256 arg3) with:
                 gas gas_remaining wei
                args arg3, 0, -ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
