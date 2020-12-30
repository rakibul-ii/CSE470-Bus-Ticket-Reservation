<?php
use PHPUnit\Framework\TestCase;
class tester extends TestCase
{
    public function testbook(){
    include "./app/controller/book.php";
    $ticket = new ticket();
    $ticket->setticket(3,4,"bKash");
    $this->assertEquals(3,$ticket->id);
    $this->assertEquals(4,$ticket->quantity);
    $this->assertEquals("bKash",$ticket->payment);
    $this->assertTrue($ticket->update());
    }
    
    public function testbus(){
    include "./app/controller/bus.php";
    $bus = new bus();
    $bus->setTest(3,4,5);
    $this->assertEquals(3,$bus->date);
    $this->assertEquals(4,$bus->location);
    $this->assertEquals(5,$bus->coach);
    $this->assertTrue($bus->getResult());
    }

    public function testhistoryfetch(){
    include "./app/controller/historyfetch.php";
    $hst = new historyfetch();
    $this->assertTrue($hst->getResult('033'));
    }
}
?>