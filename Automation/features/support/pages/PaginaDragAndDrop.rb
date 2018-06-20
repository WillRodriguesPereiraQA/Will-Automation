class PaginaDragAndDrop

  #include RSpec::Matchers
  include Capybara::DSL

  def validar_colunas
    assert_selector('#column-a')
    assert_selector('#column-b')
  end

  def arrastar_coluna
    source_selenium_ele = page.driver.browser.find_element(:id, "column-a")
    target_selenium_ele = page.driver.browser.find_element(:id, "column-b")

    page.driver.browser.action.click_and_hold(source_selenium_ele).perform
    sleep(5)
    page.driver.browser.action.drag_and_drop(source_selenium_ele, target_selenium_ele).perform
    page.driver.browser.action.release.perform
    sleep(5)
  end

  def validar_colunas_AB
    assert_selector('#column-a')
    assert_selector('#column-b')
      end
  end
